require_relative "../lib/php_pecl_formula"

class PhpAT81Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.2.7.tgz"
  sha256 "963145f6fa7b1785abbd7bb5171210b222d9790a37aded9f724d06858c0eea28"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "f9fe25b37a9806631a96690e5ff17407198a2a0c138ad5ad8a1f3b88aaa97491"
    sha256 cellar: :any, ventura: "662a34d51d2ac90467fa55936acdb7f95e66e19505077dfb5d6012b3be43a9ac"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  depends_on "cmake" => :build
  depends_on "openssl@3"

  def install
    ENV["CMAKE_POLICY_VERSION_MINIMUM"] = "3.5"
    super
  end
end
