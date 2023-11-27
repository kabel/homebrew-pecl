require_relative "../lib/php_pecl_formula"

class PhpAT81Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-6.0.2.tgz"
  sha256 "01aeccb0e14f897fe56f0509be6e6991ff0ad459f9d34e95e4556d02699b9a03"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "77e47ce838a87ea880bbca032528be21cbabd267b40ae4c7d57d1ba6aaf95bcd"
    sha256 cellar: :any, monterey: "7fa96b0c0fcf8aef33db7f04e0d0238aae1a16b479bc0744d02010bd7b6af859"
    sha256 cellar: :any, big_sur:  "fbaadcc7ff0578b3238e8f4a4907095dbb7f75238c8992a3da9b9e6883c175ae"
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
