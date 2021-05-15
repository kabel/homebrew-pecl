require_relative "../lib/php_pecl_formula"

class PhpAT73Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-3.1.2.tgz"
  sha256 "4f53da67e091238f12bd0896897c29bb7c6b70a584a626bd72dcd466cbf23c06"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "93e893bd164bed7f407cc74f6f7379b955ec901226fae87f2b83d4346faaf2a1"
    sha256 catalina: "7527a2fc54a3cd52d74b4f1febd44271b5165896d6fd026d0859c6f3c6379452"
    sha256 mojave:   "ab71bb84a3b45b1825792cff9fdd3b879a816984babda3782d5cd524a35948f9"
  end

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
