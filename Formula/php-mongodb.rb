require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.10.0.tgz"
  sha256 "8033dce1a5a5139a4bda690c15c2c98beb18c996429da6a17796dd0c4fc26a73"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "862ee0e9d32aadcc283156cb220a3abf61b2f954e73da84b82350258e8ee4e3f"
    sha256 catalina: "da34a9dce8645339716d010e8223d88de9263ca7f953caf25e6a66a4e39e5200"
    sha256 mojave:   "b072a22d8736ce4b68cb87378207e44f521356682392970fca34b4efab168074"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
