require_relative "../lib/php_pecl_formula"

class PhpAT81Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-6.2.0.tgz"
  sha256 "5069c13dd22bd9e494bb246891052cb6cc0fc9a1b45c6a572a8be61773101363"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "10d2a510a04e3442ac076e6ddeb7ef0b221d9f91111d0f233db5e2c4e36423f3"
    sha256 cellar: :any, ventura: "6748ccccab4413230515b4160005253647e69816b420d86a4b5a44ed29a94fd5"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  depends_on "lz4"
  depends_on "zstd"
  depends_on "kabel/pecl/php@8.1-igbinary"
  depends_on "kabel/pecl/php@8.1-msgpack"

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
    ln_s Formula["kabel/pecl/php@8.1-igbinary"].opt_include/"php/ext/igbinary",
      buildpath/source_dir/"include/php/ext/igbinary"
    ln_s Formula["kabel/pecl/php@8.1-msgpack"].opt_include/"php/ext/msgpack",
      buildpath/source_dir/"include/php/ext/msgpack"
    super
  end
end
