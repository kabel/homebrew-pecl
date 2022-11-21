require_relative "../lib/php_pecl_formula"

class PhpAT74Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.3.7.tgz"
  sha256 "b958166ccda4f40bd17c6998f9e2239021ae644467cd8ad5c15def420aad65b0"
  revision 1
  license "PHP-3.01"

  depends_on "lz4"
  depends_on "kabel/pecl/php@7.4-igbinary"
  depends_on "kabel/pecl/php@7.4-msgpack"

  configure_arg %W[
    --enable-redis-igbinary
    --enable-redis-lz4
    --enable-redis-lzf
    --enable-redis-msgpack
    --enable-redis-zstd
    --with-liblz4=#{Formula["lz4"].opt_prefix}
  ]

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, ventura:  "08294953d15752f49f47122bd285b75ab1e6820213c9fcf92c0f734137dafc43"
    sha256 cellar: :any, monterey: "58b9cbdba2cac423e0a3361d456456350a88f3169f3bd3c59ad32cc9f90a2527"
    sha256 cellar: :any, big_sur:  "485d406edf982a9cc4a0490de631742237d52f32e16570b2b204af23169f7159"
  end

  def install
    # fix include location for configure to find
    mkdir_p buildpath/source_dir/"include/php/ext"
    ln_s Formula["kabel/pecl/php@7.4-igbinary"].opt_include/"php/ext/igbinary",
      buildpath/source_dir/"include/php/ext/igbinary"
    ln_s Formula["kabel/pecl/php@7.4-msgpack"].opt_include/"php/ext/msgpack",
      buildpath/source_dir/"include/php/ext/msgpack"
    super
  end
end
