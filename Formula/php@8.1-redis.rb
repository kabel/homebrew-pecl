require_relative "../lib/php_pecl_formula"

class PhpAT81Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-6.0.2.tgz"
  sha256 "01aeccb0e14f897fe56f0509be6e6991ff0ad459f9d34e95e4556d02699b9a03"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "f7da42675cd00ff93c0391947c7d3593160b37110c25f0816e0efc1fb4d56928"
    sha256 cellar: :any, ventura:  "236bd61709997f46d8b6c428cc2bc8df14226537092d7b84514da99527fb20cc"
    sha256 cellar: :any, monterey: "53d6254c711ba0ce77b5eb96ffb6b9d4f433c5b9e0fd438c70f1cfb79a3816e6"
  end

  deprecate! date: "2024-11-25", because: :unsupported

  depends_on "lz4"
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
