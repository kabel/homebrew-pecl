require_relative "../lib/php_pecl_formula"

class PhpRedis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.3.7.tgz"
  sha256 "b958166ccda4f40bd17c6998f9e2239021ae644467cd8ad5c15def420aad65b0"
  revision 1
  license "PHP-3.01"

  depends_on "lz4"
  depends_on "kabel/pecl/php-igbinary"
  depends_on "kabel/pecl/php-msgpack"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "6167dcc2986b0cc0742b3563099ff9c9898718fa9858f64b4654b2124bea9a8e"
    sha256 cellar: :any, monterey: "c2f4732694d3bc0e755e0d6e472f6fac2fa5490baed159209ff72b805453afa3"
    sha256 cellar: :any, big_sur:  "0119642bbc51b109418126d296a473a7915a056c6b180708e474c69b33ff1e89"
  end

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
    ln_s Formula["kabel/pecl/php-igbinary"].opt_include/"php/ext/igbinary",
      buildpath/source_dir/"include/php/ext/igbinary"
    ln_s Formula["kabel/pecl/php-msgpack"].opt_include/"php/ext/msgpack",
      buildpath/source_dir/"include/php/ext/msgpack"
    super
  end
end
