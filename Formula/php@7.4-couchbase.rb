require_relative "../lib/php_pecl_formula"

class PhpAT74Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-3.0.4.tgz"
  sha256 "f9536473a4bc113ee5712ea0d4c1bd9b26a51662ca14a8490de7293181662f47"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "315958e85c6b8d711879ad71f60a613b3fc27bee725c041e02bf01d57020860f" => :catalina
    sha256 "bdb5ca4d69d1e3eacebc59398efa3327c10c7621489178f2e71b33fd85a75143" => :mojave
  end

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
