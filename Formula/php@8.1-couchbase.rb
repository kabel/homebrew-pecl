require_relative "../lib/php_pecl_formula"

class PhpAT81Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.2.6.tgz"
  sha256 "728c466b9c5bf82639641e1fab84de7b690e5ded8ea0a4b1af5bf88919d49fac"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "f9fe25b37a9806631a96690e5ff17407198a2a0c138ad5ad8a1f3b88aaa97491"
    sha256 cellar: :any, ventura: "662a34d51d2ac90467fa55936acdb7f95e66e19505077dfb5d6012b3be43a9ac"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  depends_on "cmake" => :build
  depends_on "openssl@3"
end
