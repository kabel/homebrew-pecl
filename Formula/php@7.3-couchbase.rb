require_relative "../lib/php_pecl_formula"

class PhpAT73Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-3.1.1.tgz"
  sha256 "1723b6673c243734fd0eb880fe90c1ee7a45446876f7d2bf51665b9621f6eb37"
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
