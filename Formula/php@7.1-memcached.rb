require_relative "../lib/php_pecl_formula"

class PhpAT71Memcached < PhpPeclFormula
  extension_dsl "Extension for interfacing with memcached via libmemcached library"

  url "https://pecl.php.net/get/memcached-3.1.4.tgz"
  sha256 "e91615b9c422676196062a0983b4abf54257e8b10a30dcf206d8b7a3ed142576"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "12a27e95567efb34dfee25e89c7a15c5c159c2b7c14cda8b81aea0ff835bbac5" => :mojave
    sha256 "355d0cf63f1a8c9d001a30a69b16910499eab714ea30769bc5ac416290e23cfd" => :high_sierra
  end

  depends_on "libmemcached"

  configure_arg %W[
    --with-libmemcached-dir=#{Formula["libmemcached"].opt_prefix}
    --with-zlib-dir=#{MacOS.sdk_path_if_needed}/usr
  ]
end
