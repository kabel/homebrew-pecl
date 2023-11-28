require_relative "../lib/php_pecl_formula"

class PhpAT81Memcached < PhpPeclFormula
  extension_dsl "Extension for interfacing with memcached via libmemcached library"

  url "https://pecl.php.net/get/memcached-3.2.0.tgz"
  sha256 "2a41143a7b29f4a962a3805b77aa207a99e4566e2d314ce98a051cd24d6e9636"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "2291d1222ef5dabb6b75cd2d679cead5baee3ab3b0a035d654f8e6f49d3e505d"
    sha256 cellar: :any, ventura:  "43e9886f8db1add316dd7a9e298f5cdd57cdf87d1ef1ee75829f002874788a87"
    sha256 cellar: :any, monterey: "6b958a053487c9be8e6a8e6be18cebb5251b476110ec38b102e454991d8b6190"
    sha256 cellar: :any, big_sur:  "ae51839fd5eadb71b1e794972351ecf87eacae0d5f4ffa95877e76c87fd7858f"
  end

  deprecate! date: "2024-11-25", because: :unsupported

  depends_on "libmemcached"
  depends_on "kabel/pecl/php@8.1-igbinary"
  depends_on "kabel/pecl/php@8.1-msgpack"

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
    ln_s Formula["kabel/pecl/php@8.1-igbinary"].opt_include/"php/ext/igbinary",
      buildpath/source_dir/"include/php/ext/igbinary"
    ln_s Formula["kabel/pecl/php@8.1-msgpack"].opt_include/"php/ext/msgpack",
      buildpath/source_dir/"include/php/ext/msgpack"
    super
  end
end
