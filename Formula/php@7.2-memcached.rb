require_relative "../lib/php_pecl_formula"

class PhpAT72Memcached < PhpPeclFormula
  extension_dsl "Extension for interfacing with memcached via libmemcached library"

  url "https://pecl.php.net/get/memcached-3.1.4.tgz"
  sha256 "e91615b9c422676196062a0983b4abf54257e8b10a30dcf206d8b7a3ed142576"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "432f7446482a3e3e31423db6032e79de4a6e0b97e344e3ad15a28406eb5b61da" => :mojave
    sha256 "acaaaf79da8d529f4992fe85ae9c9ec147895f0dd6fa7805e031b7c4ea5d363d" => :high_sierra
  end

  depends_on "libmemcached"

  configure_arg %W[
    --with-libmemcached-dir=#{Formula["libmemcached"].opt_prefix}
    --with-zlib-dir=#{MacOS.sdk_path_if_needed}/usr
  ]
end
