require_relative "../lib/php_pecl_formula"

class PhpAT82Memcached < PhpPeclFormula
  extension_dsl "Extension for interfacing with memcached via libmemcached library"

  url "https://pecl.php.net/get/memcached-3.3.0.tgz"
  sha256 "2b85bf6699497170801fb4d06eb9c9a06bfc551cdead04101dd75c980be9eebf"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "2db8c24a59ab72d3a65e4b5cecfed598d5daf42a95bd8041b3751ef5e9f3ee42"
    sha256 cellar: :any, ventura: "ec14b3840f60808d2a26220f4c6e2063b91ee023e1f1b33b4767650772aec54e"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  depends_on "libmemcached"
  depends_on "kabel/pecl/php@8.2-igbinary"
  depends_on "kabel/pecl/php@8.2-msgpack"

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
    ln_s Formula["kabel/pecl/php@8.2-igbinary"].opt_include/"php/ext/igbinary",
      buildpath/source_dir/"include/php/ext/igbinary"
    ln_s Formula["kabel/pecl/php@8.2-msgpack"].opt_include/"php/ext/msgpack",
      buildpath/source_dir/"include/php/ext/msgpack"
    super
  end
end
