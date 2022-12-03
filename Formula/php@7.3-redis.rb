require_relative "../lib/php_pecl_formula"

class PhpAT73Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.3.4.tgz"
  sha256 "4b39056f3356f135255e059efd76398d1c7607c86bd52513e6341bb07a3fb4cc"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 big_sur:  "05cb66dd65f128e60171b45c7bf48231d24119dd205dfd36aeea7f04cbf68274"
    sha256 catalina: "61c71bc621c67c3058471d271e48b7e9a73b9f3d60661658992d7ad977a8de5b"
    sha256 mojave:   "c819d785e36ed0cacceb40997c46a68fb5e568773a2bbd4eb80a4a0948857463"
  end

  disable! date: "2021-12-06", because: :versioned_formula

  depends_on "lz4"
  depends_on "kabel/pecl/php@7.3-igbinary"
  depends_on "kabel/pecl/php@7.3-msgpack"

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
    ln_s Formula["kabel/pecl/php@7.3-igbinary"].opt_include/"php/ext/igbinary",
      buildpath/source_dir/"include/php/ext/igbinary"
    ln_s Formula["kabel/pecl/php@7.3-msgpack"].opt_include/"php/ext/msgpack",
      buildpath/source_dir/"include/php/ext/msgpack"
    super
  end
end
