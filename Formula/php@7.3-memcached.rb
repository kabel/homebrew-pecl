require_relative "../lib/php_pecl_formula"

class PhpAT73Memcached < PhpPeclFormula
  extension_dsl "Extension for interfacing with memcached via libmemcached library"

  url "https://pecl.php.net/get/memcached-3.1.4.tgz"
  sha256 "e91615b9c422676196062a0983b4abf54257e8b10a30dcf206d8b7a3ed142576"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "7e84ef06f00153dfecb75f750baf524ae3dedb7687afb48b1beb810c35de6632" => :mojave
    sha256 "8a3e6cb345f14b1fa614cc4471fd8aa82c7b01e4decea08ae2e84b586ea7468e" => :high_sierra
  end

  depends_on "libmemcached"

  configure_arg %W[
    --with-libmemcached-dir=#{Formula["libmemcached"].opt_prefix}
    --with-zlib-dir=#{MacOS.sdk_path_if_needed}/usr
  ]
end
