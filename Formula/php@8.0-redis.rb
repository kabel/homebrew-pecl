require_relative "../lib/php_pecl_formula"

class PhpAT80Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.3.7.tgz"
  sha256 "b958166ccda4f40bd17c6998f9e2239021ae644467cd8ad5c15def420aad65b0"
  revision 1
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "611ef85aee0e47442ac4482672bccdb789f8445a7f8a18134645129755256bea"
    sha256 cellar: :any, monterey: "35832c2a5a567ac740a6d2c07ca2d1835260a0afaee6a63ab5beb510bde534d2"
    sha256 cellar: :any, big_sur:  "a4059f8cbb28bff60b4770eaf6511402ea971d969e845a531b52b6fdc5ac3a35"
  end

  depends_on "lz4"
  depends_on "kabel/pecl/php@8.0-igbinary"
  depends_on "kabel/pecl/php@8.0-msgpack"

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
    ln_s Formula["kabel/pecl/php@8.0-igbinary"].opt_include/"php/ext/igbinary",
      buildpath/source_dir/"include/php/ext/igbinary"
    ln_s Formula["kabel/pecl/php@8.0-msgpack"].opt_include/"php/ext/msgpack",
      buildpath/source_dir/"include/php/ext/msgpack"
    super
  end
end
