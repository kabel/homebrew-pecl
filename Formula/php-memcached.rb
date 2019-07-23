require File.expand_path("../lib/php_pecl_formula", __dir__)

class PhpMemcached < PhpPeclFormula
  extension_dsl "Extension for interfacing with memcached via libmemcached library"

  url "https://pecl.php.net/get/memcached-3.1.3.tgz"
  sha256 "20786213ff92cd7ebdb0d0ac10dde1e9580a2f84296618b666654fd76ea307d4"

  depends_on "libmemcached"

  configure_arg "--with-libmemcached-dir=#{Formula["libmemcached"].opt_prefix}"
end
