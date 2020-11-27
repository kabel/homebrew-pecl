require_relative "../lib/php_pecl_formula"

class PhpCouchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-3.0.4.tgz"
  sha256 "f9536473a4bc113ee5712ea0d4c1bd9b26a51662ca14a8490de7293181662f47"
  license "Apache-2.0"

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
