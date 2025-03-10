require_relative "../lib/php_pecl_formula"

class PhpAT83Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.2.6.tgz"
  sha256 "728c466b9c5bf82639641e1fab84de7b690e5ded8ea0a4b1af5bf88919d49fac"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "2b3c61cd258427b1cd68ace7b494dcc3803a2f15422fbc40ca71244e2e3be6f4"
    sha256 cellar: :any, ventura: "d0bdf92aa07f95191f9eac241c5aa0b642abc8ce1b8e91d2311f9fe8a3003798"
  end

  deprecate! date: "2027-12-31", because: :unsupported

  depends_on "cmake" => :build
  depends_on "openssl@3"
end
