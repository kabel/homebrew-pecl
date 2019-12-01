require_relative "../lib/php_pecl_formula"

class PhpAT73Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-2.6.1.tgz"
  sha256 "e977a08f4b6b75eb7a903e76c069ad3a12f19a7ea1b0c4da8b04c1c3cc7a5743"

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
