require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.9.1.tgz"
  sha256 "e9d1ce23168385aae24d9b516cab3d67504c85e800569e0fcf2f2125bcd6fed7"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "b3b1b5fa54227071bfcd5128473b41c6b202a9377f797feaf2bb440c6a4c8a51"
    sha256 catalina: "18d5e426d5d1c807c10511af3cbc92bbe3632d2c754ab67d72abb48f9c412802"
    sha256 mojave:   "d01ffdbf66208aa584af70bff0267efa43c12fe702193fad72dfadd9304ba99b"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
