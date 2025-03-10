require_relative "../lib/php_pecl_formula"

class PhpCouchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.2.6.tgz"
  sha256 "728c466b9c5bf82639641e1fab84de7b690e5ded8ea0a4b1af5bf88919d49fac"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "9a3a9e769bc9cd442fc957c013d5cab444a6ac23f5f3ba8d7471de6618d53c56"
    sha256 cellar: :any, ventura: "291d03fda0eebe6d230ed66f8d9d6f4a13f9a81e87c7568ec3771de57b2c5c12"
  end

  depends_on "cmake" => :build
  depends_on "openssl@3"
end
