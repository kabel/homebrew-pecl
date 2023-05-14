require_relative "../lib/php_pecl_formula"

class PhpAT80Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.1.3.tgz"
  sha256 "bfca3512e59dffc9f981cba0294387a50a83c1f7e446de92ae44f8d1d421194a"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 ventura:  "08daa5fb1e421df177e609c4bdc2880118391a6c14c9d48c84438b38cba977fc"
    sha256 monterey: "7c6bcc0a811eb1c67fe8ee0672cb85326a31840d5b944ee2c68881b0533532fb"
    sha256 big_sur:  "6969e772d53410122c43eb3d01ca1f530c16cf5d29510f9255454b3f4530cd05"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula

  depends_on "cmake" => :build
  depends_on "openssl@1.1"
end
