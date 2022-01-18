require_relative "../lib/php_pecl_formula"

class PhpAT80Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.3.6.tgz"
  sha256 "fe295ec26a25204e6c07e8d7144210f767bd7008858719da230409eb3f6f2e09"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "88c04b3cb6364cd84bc8bae07a2999edd0ecddba214fb8a6a2ecc3d2f2e9fdc6"
    sha256 catalina: "1256edc5bddf1ed070d16d02fcb8a72f416184e9c359b7c53ba6555b5aefb431"
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
