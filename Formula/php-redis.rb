require_relative "../lib/php_pecl_formula"

class PhpRedis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.3.3.tgz"
  sha256 "37789161e164cd52239a30c9a238da61fec5c8395cdac385b6ed8f0c50fd92f0"
  revision 1
  license "PHP-3.01"

  depends_on "lz4"
  depends_on "kabel/pecl/php-igbinary"
  depends_on "kabel/pecl/php-msgpack"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, catalina: "f5fd34141405c2141b73f6678a0c72b61a24086fcc84a063f9bfe31b9955b4a2"
    sha256 cellar: :any_skip_relocation, mojave:   "039c530a736328f9af7e08fac1ba195d8d61e3dcd8af5c85fbdd3d91d772e7a9"
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
