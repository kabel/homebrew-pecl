require_relative "../lib/php_pecl_formula"

class PhpAT83Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-6.2.0.tgz"
  sha256 "5069c13dd22bd9e494bb246891052cb6cc0fc9a1b45c6a572a8be61773101363"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "e51712c528e8a55509b92fd0b6dc3ed687b50e90e47a2b8caea772eb1a522475"
    sha256 cellar: :any, ventura: "fc4db3746ad618718137fc8865e9d32de2e53f972e52f539e625e190ac429e5a"
  end

  deprecate! date: "2027-12-31", because: :unsupported

  depends_on "lz4"
  depends_on "zstd"
  depends_on "kabel/pecl/php@8.3-igbinary"
  depends_on "kabel/pecl/php@8.3-msgpack"

  configure_arg %W[
    --enable-redis-igbinary
    --enable-redis-lz4
    --enable-redis-lzf
    --enable-redis-msgpack
    --enable-redis-zstd
    --with-liblz4=#{Formula["lz4"].opt_prefix}
  ]

  def install
    # fix include location for configure to find
    mkdir_p buildpath/source_dir/"include/php/ext"
    ln_s Formula["kabel/pecl/php@8.3-igbinary"].opt_include/"php/ext/igbinary",
      buildpath/source_dir/"include/php/ext/igbinary"
    ln_s Formula["kabel/pecl/php@8.3-msgpack"].opt_include/"php/ext/msgpack",
      buildpath/source_dir/"include/php/ext/msgpack"
    super
  end
end
