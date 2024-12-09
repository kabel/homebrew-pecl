require_relative "../lib/php_pecl_formula"

class PhpAT82Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-6.1.0.tgz"
  sha256 "f10405f639fe415e9ed4ec99538e72c90694d8dbd62868edcfcd6a453466b48c"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "f54190344bfd3810a981f38a4eedf5cd3a03ca6afa29c46e7da36da95ce28c90"
    sha256 cellar: :any, ventura: "23dbc71f1ad9dd1487e71647f2e80bacd0cc974983ca12fd4af14f73dd0aecff"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  depends_on "lz4"
  depends_on "zstd"
  depends_on "kabel/pecl/php@8.2-igbinary"
  depends_on "kabel/pecl/php@8.2-msgpack"

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
    ln_s Formula["kabel/pecl/php@8.2-igbinary"].opt_include/"php/ext/igbinary",
      buildpath/source_dir/"include/php/ext/igbinary"
    ln_s Formula["kabel/pecl/php@8.2-msgpack"].opt_include/"php/ext/msgpack",
      buildpath/source_dir/"include/php/ext/msgpack"
    super
  end
end
