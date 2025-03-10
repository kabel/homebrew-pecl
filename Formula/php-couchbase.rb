require_relative "../lib/php_pecl_formula"

class PhpCouchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.2.6.tgz"
  sha256 "728c466b9c5bf82639641e1fab84de7b690e5ded8ea0a4b1af5bf88919d49fac"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "995eaad310b39b1b865b66a1f5f86b4e351f7723f7a52b3d76160001b3ffc78c"
    sha256 cellar: :any, ventura: "933a1d16e2d915af936cfa58701857456ac647a4d967d55e98240a13adb62734"
  end

  depends_on "cmake" => :build
  depends_on "openssl@3"
end
