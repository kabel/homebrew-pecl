require_relative "../lib/php_pecl_formula"

class PhpAT74Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.3.6.tgz"
  sha256 "fe295ec26a25204e6c07e8d7144210f767bd7008858719da230409eb3f6f2e09"
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
    sha256 big_sur:  "20067970d4ac7714a7ce97deb2d082587cab664cf7c1d008f9bf4c3027833ec7"
    sha256 catalina: "060b00e280caaebe2a864341380f8318e03b9c7d97e53dbb1f3d439bac4f5a28"
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
