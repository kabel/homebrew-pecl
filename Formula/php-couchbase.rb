require_relative "../lib/php_pecl_formula"

class PhpCouchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.2.1.tgz"
  sha256 "89c3a72ceb4afb1399fc5320129a491fad5dc58b4a482fcfb526e6267e729f88"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "994492af5aae8a63b3aac970284bacd6e277183b09481c24331c3a5c4e42bb08"
    sha256 cellar: :any, ventura:  "3a1e679b1c48559bc04ad55f722559ad580cefc3c0931133492c2d67ff52cfea"
    sha256 cellar: :any, monterey: "a148454cff35194fa64725d4887ae8afe3a75dac4b961436f1c4c3da22253293"
  end

  depends_on "cmake" => :build
  depends_on "openssl@3"
end
