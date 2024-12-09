require_relative "../lib/php_pecl_formula"

class PhpAT82Memcached < PhpPeclFormula
  extension_dsl "Extension for interfacing with memcached via libmemcached library"

  url "https://pecl.php.net/get/memcached-3.3.0.tgz"
  sha256 "2b85bf6699497170801fb4d06eb9c9a06bfc551cdead04101dd75c980be9eebf"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "3bb0244562fb2d61cfcb7984e775b82242809ecda7c14c12c01b79853808320d"
    sha256 cellar: :any, ventura:  "578a0599c68b79bebc3472b5bf76aef5eaf015bd93de305914df8fe76dc881e1"
    sha256 cellar: :any, monterey: "2f9322af7fa58f88fef21d72ec9dc215c216cd020fdde59579f9a20f70d5f194"
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
