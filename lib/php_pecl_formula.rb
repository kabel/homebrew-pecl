# frozen_string_literal: true

class PhpPeclFormula < Formula
  desc "PHP PECL Extension"
  homepage "https://pecl.php.net/"

  def source_dir
    "#{extension}-#{version}"
  end

  def install
    cd source_dir if (buildpath/source_dir).exist?
    system php_parent.bin/"phpize"
    system "./configure", *configure_args
    system "make"
    (lib/module_path).install "modules/#{provides_extension}.so"
    headers = Dir["php_*.h"]
    (include/"php/ext"/provides_extension).install headers unless headers.empty?
  end

  def post_install
    ext_config_path = etc/"php"/php_parent.version.major_minor/"conf.d"/"ext-#{extension}.ini"
    if ext_config_path.exist?
      inreplace ext_config_path,
                /#{extension_type}=.*$/,
                "#{extension_type}=#{opt_lib/module_path}/#{provides_extension}.so"
    else
      ext_config_path.write <<~EOS
        [#{provides_extension}]
        #{extension_type}=#{opt_lib/module_path}/#{provides_extension}.so
      EOS
    end
  end

  test do
    assert_match provides_extension.downcase,
                 shell_output("#{php_parent.opt_bin}/php -m").downcase,
                 "failed to find extension in php -m output"
  end

  private

  delegate [:php_parent, :extension, :configure_args] => :"self.class"

  def extension_type
    # extension or zend_extension
    "extension"
  end

  def provides_extension
    extension
  end

  def module_path
    extension_dir = Utils.safe_popen_read(php_parent.opt_bin/"php-config", "--extension-dir").chomp
    php_basename = File.basename(extension_dir)
    "php/#{php_basename}"
  end

  class << self
    NAME_PATTERN = /^Php(?:AT([578])(\d+))?(.+)/.freeze
    attr_reader :configure_args, :php_parent, :extension

    def configure_arg(args)
      @configure_args ||= []
      @configure_args.concat(Array(args))
    end

    def extension_dsl(description = nil)
      class_name = name.split("::").last
      m = NAME_PATTERN.match(class_name)
      raise "Bad PECL extension name for #{class_name}" if m.nil?

      if m[1].nil?
        parent_name = "php"
      else
        parent_name = "php@#{m.captures[0..1].join(".")}"
        keg_only :versioned_formula
      end

      @php_parent = Formula[parent_name]
      @extension = m[3].gsub(/([a-z])([A-Z])/) do
        "#{Regexp.last_match(1)}_#{Regexp.last_match(2)}"
      end.downcase
      @configure_args = %W[
        --with-php-config=#{php_parent.opt_bin/"php-config"}
      ]

      desc "#{description.strip.gsub(/\s+/, " ")} for PHP #{php_parent.version.major_minor}" unless description.nil?

      homepage "https://pecl.php.net/package/#{extension}"

      depends_on "autoconf" => :build
      depends_on "pkg-config" => :build
      depends_on parent_name
    end
  end
end
