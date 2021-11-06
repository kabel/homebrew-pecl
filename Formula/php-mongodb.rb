require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.11.1.tgz"
  sha256 "838a5050de50d51f959026bd8cec7349d8af37058c0fe07295a0bc960a82d7ef"
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
