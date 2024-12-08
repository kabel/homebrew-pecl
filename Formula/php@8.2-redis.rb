require_relative "../lib/php_pecl_formula"

class PhpAT82Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-6.0.2.tgz"
  sha256 "01aeccb0e14f897fe56f0509be6e6991ff0ad459f9d34e95e4556d02699b9a03"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "774cb8529c69690d7ab2052fdc25c9004d0f5eb8b6fdb181feb701d905f59195"
    sha256 cellar: :any, ventura:  "5d5a20c9132acf0c373ac4a8d93806420ef79c26f145409645868f4febf27585"
    sha256 cellar: :any, monterey: "b2ae999b7152691200021c19ebfe4365c94cb2866291dd802ae11133b105d41d"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  depends_on "lz4"
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
