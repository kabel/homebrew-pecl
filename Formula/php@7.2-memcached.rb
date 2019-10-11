require_relative "../lib/php_pecl_formula"

class PhpAT72Memcached < PhpPeclFormula
  extension_dsl "Extension for interfacing with memcached via libmemcached library"

  url "https://pecl.php.net/get/memcached-3.1.4.tgz"
  sha256 "e91615b9c422676196062a0983b4abf54257e8b10a30dcf206d8b7a3ed142576"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "d678259626a3eaef085b1f8f1d22bdca126da5a4936a3240aeff4866c819c49c" => :mojave
    sha256 "5d20321b2f178b41573caf549302092731d3c733980e3faa73adddc963d57ab0" => :high_sierra
  end

  depends_on "libmemcached"

  configure_arg %W[
    --with-libmemcached-dir=#{Formula["libmemcached"].opt_prefix}
    --with-zlib-dir=#{MacOS.sdk_path_if_needed}/usr
  ]
end
