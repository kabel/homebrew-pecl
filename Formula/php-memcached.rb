require_relative "../lib/php_pecl_formula"

class PhpMemcached < PhpPeclFormula
  extension_dsl "Extension for interfacing with memcached via libmemcached library"

  url "https://pecl.php.net/get/memcached-3.2.0.tgz"
  sha256 "2a41143a7b29f4a962a3805b77aa207a99e4566e2d314ce98a051cd24d6e9636"
  revision 3
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "5ff37b8503618a4e46ce654f8019abdbfee1048363617e66930eb9e63f6ce059"
    sha256 cellar: :any, ventura:  "d5e1c34cf592268ab46e06d02b3876762af7c30a962415fbb09d7c860a15792a"
    sha256 cellar: :any, monterey: "06109d7e180eae88494dd5e25f873fd3181882c7c7d1ed59a83bba5b94392854"
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
    --with-zlib-dir=#{MacOS.sdk_path_if_needed}/usr
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
