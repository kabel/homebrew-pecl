require_relative "../lib/php_pecl_formula"

class PhpMemcached < PhpPeclFormula
  extension_dsl "Extension for interfacing with memcached via libmemcached library"

  url "https://pecl.php.net/get/memcached-3.1.4.tgz"
  sha256 "e91615b9c422676196062a0983b4abf54257e8b10a30dcf206d8b7a3ed142576"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "5432e00ecc1ca960f9cce3eec9839905e2e3ee3681c10f62a5c246ac1dab1024" => :mojave
    sha256 "12ebb6ece180ce8087cdbbc4474a78f2d307cf993230bff33dc1fc4a0ca2f9be" => :high_sierra
  end

  depends_on "libmemcached"

  configure_arg %W[
    --with-libmemcached-dir=#{Formula["libmemcached"].opt_prefix}
    --with-zlib-dir=#{MacOS.sdk_path_if_needed}/usr
  ]
end
