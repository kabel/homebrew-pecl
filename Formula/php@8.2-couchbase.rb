require_relative "../lib/php_pecl_formula"

class PhpAT82Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.2.7.tgz"
  sha256 "963145f6fa7b1785abbd7bb5171210b222d9790a37aded9f724d06858c0eea28"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "c79acf0a464699e4e5cae4efec496fb9b74ae369739b449a7d651b14f99c0be2"
    sha256 cellar: :any, ventura: "c403fd71f23ecdc3e8091caa1658fcc96ca0255208865115feebc7d5047c42b2"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  depends_on "cmake" => :build
  depends_on "openssl@3"

  def install
    ENV["CMAKE_POLICY_VERSION_MINIMUM"] = "3.5"
    super
  end
end
