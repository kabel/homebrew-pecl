require_relative "../lib/php_pecl_formula"

class PhpAT74Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.3.4.tgz"
  sha256 "4b39056f3356f135255e059efd76398d1c7607c86bd52513e6341bb07a3fb4cc"
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
    sha256 big_sur:  "14f535a7bc91652f098831e0e50696f511857aa9010364cc14ddd467694c0392"
    sha256 catalina: "218710c8a5a28ee3f796a3323562e49dc4fa7544a8434f93c0bc0a7e4fb420c6"
    sha256 mojave:   "c78566041ef546bcd6735a21ad2a7c79548aa2bc76867cd97c76236a3622eb72"
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
