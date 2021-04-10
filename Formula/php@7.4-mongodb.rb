require_relative "../lib/php_pecl_formula"

class PhpAT74Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.9.1.tgz"
  sha256 "e9d1ce23168385aae24d9b516cab3d67504c85e800569e0fcf2f2125bcd6fed7"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "ccd2d4bf58d449c6425536a51df7e5ca941f8523d83ba5e51ea76d4d7d62ec79"
    sha256 catalina: "dde087fda33ca6cd16dde38257ad19e4738409655230f870cdf89746b36e0dbc"
    sha256 mojave:   "133f32c0a38a6904ed247e5bdfe4cf63a8cde497f6d4b56b64bccfc2f04ec4f7"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
