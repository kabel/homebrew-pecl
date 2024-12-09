require_relative "../lib/php_pecl_formula"

class PhpMemcached < PhpPeclFormula
  extension_dsl "Extension for interfacing with memcached via libmemcached library"

  url "https://pecl.php.net/get/memcached-3.3.0.tgz"
  sha256 "2b85bf6699497170801fb4d06eb9c9a06bfc551cdead04101dd75c980be9eebf"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "457b87c6efb85e11e609dad1854526966914589eafd8d209a2be34af1d01c361"
    sha256 cellar: :any, ventura: "871a75b9927275b2c0e6339484e0781d32c46c3b59e29b81a41f6cc02a93ca30"
  end

  depends_on "libmemcached"
  depends_on "kabel/pecl/php-igbinary"
  depends_on "kabel/pecl/php-msgpack"

  configure_arg %W[
    --enable-memcached-session
    --enable-memcached-igbinary
    --enable-memcached-json
    --enable-memcached-msgpack
    --enable-memcached-sasl
    --with-libmemcached-dir=#{Formula["libmemcached"].opt_prefix}
  ]

  on_macos do
    configure_arg "--with-zlib-dir=#{MacOS.sdk_path_if_needed}/usr"
  end

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
