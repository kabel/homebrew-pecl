require_relative "../lib/php_pecl_formula"

class PhpAT73Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.11.1.tgz"
  sha256 "838a5050de50d51f959026bd8cec7349d8af37058c0fe07295a0bc960a82d7ef"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "3933a4f6c91adf8272162de1efe1e0be5eda1d1b9bbfd178060ed963cab71bc6"
    sha256 catalina: "338b46bbf4dd7fadaaa3712dec980523098367956d4fed745e329f846add5b5c"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
