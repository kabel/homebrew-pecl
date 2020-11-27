require_relative "../lib/php_pecl_formula"

class PhpAT74Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-3.0.4.tgz"
  sha256 "f9536473a4bc113ee5712ea0d4c1bd9b26a51662ca14a8490de7293181662f47"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "2f2a926394e039e60410108c7e18dc0d81bbe62d6f9ac68092c155c89860eb38" => :catalina
    sha256 "6929fbe498c200abd3d58bb11941a5592e740cf6871be43d8871334775bf53c0" => :mojave
  end

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
