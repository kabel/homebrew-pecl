require_relative "../lib/php_pecl_formula"

class PhpAT82Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.2.6.tgz"
  sha256 "728c466b9c5bf82639641e1fab84de7b690e5ded8ea0a4b1af5bf88919d49fac"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "6ed52fa2f4cc090104a8f24a5d05256719104ca8cc0a7d070d8346d724e1aaed"
    sha256 cellar: :any, ventura: "f8a3714b17603247b3b1d58dcbefe2d19b9fe1135981ad507cd5d1d1600d062d"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  depends_on "cmake" => :build
  depends_on "openssl@3"
end
