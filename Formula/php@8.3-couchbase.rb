require_relative "../lib/php_pecl_formula"

class PhpAT83Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.2.7.tgz"
  sha256 "963145f6fa7b1785abbd7bb5171210b222d9790a37aded9f724d06858c0eea28"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "2009364606390e668d96f67a636eae325fd8072ccffbf5b170a41bca1a826208"
    sha256 cellar: :any, ventura: "0200da1e58ca263d1db74d87f62bf5d2a3c867442ef5d1161b89cd868ac78c30"
  end

  deprecate! date: "2027-12-31", because: :unsupported

  depends_on "cmake" => :build
  depends_on "openssl@3"

  def install
    ENV["CMAKE_POLICY_VERSION_MINIMUM"] = "3.5"
    super
  end
end
