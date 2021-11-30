require_relative "../lib/php_pecl_formula"

class PhpAT80Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.11.1.tgz"
  sha256 "838a5050de50d51f959026bd8cec7349d8af37058c0fe07295a0bc960a82d7ef"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "6b879adf26f5a9dd1959177c052048c845c0f15dcbf9235e2a29cddb8697a97f"
    sha256 catalina: "6343bc438de8ab450e6b3aa3257b08d3abd11b240dab5501ba9734386ef62e44"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
