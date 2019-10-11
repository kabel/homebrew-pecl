require_relative "../lib/php_pecl_formula"

class PhpAT71Memcached < PhpPeclFormula
  extension_dsl "Extension for interfacing with memcached via libmemcached library"

  url "https://pecl.php.net/get/memcached-3.1.4.tgz"
  sha256 "e91615b9c422676196062a0983b4abf54257e8b10a30dcf206d8b7a3ed142576"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "24e6cab77eadab5f3e885bdc89438120dd9d37d93208e1013e5b59053af1fda7" => :mojave
    sha256 "b6633001b002990c3f85043edfbc89825a3f8d19f0c7f59bd353bb84eff9fedb" => :high_sierra
  end

  depends_on "libmemcached"

  configure_arg %W[
    --with-libmemcached-dir=#{Formula["libmemcached"].opt_prefix}
    --with-zlib-dir=#{MacOS.sdk_path_if_needed}/usr
  ]
end
