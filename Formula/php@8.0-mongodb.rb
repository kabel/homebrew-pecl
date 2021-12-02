require_relative "../lib/php_pecl_formula"

class PhpAT80Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.11.1.tgz"
  sha256 "838a5050de50d51f959026bd8cec7349d8af37058c0fe07295a0bc960a82d7ef"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "2484a4c7bbc65d4c054d6ac3ba2a5deff5617f4aab8d5da7ad7e941e448a0096"
    sha256 catalina: "b6e7ea5350843e0a436e201b61ded7e703e1f5d303eecf2da0ae9248c0fbcb59"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
