require_relative "../lib/php_pecl_formula"

class PhpCouchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.2.5.tgz"
  sha256 "5b5d830ce2eadb551a251070082b910ccaedd9fab9dc5c554a0bd98b7e50ca5f"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "9a3a9e769bc9cd442fc957c013d5cab444a6ac23f5f3ba8d7471de6618d53c56"
    sha256 cellar: :any, ventura: "291d03fda0eebe6d230ed66f8d9d6f4a13f9a81e87c7568ec3771de57b2c5c12"
  end

  depends_on "cmake" => :build
  depends_on "openssl@3"
end
