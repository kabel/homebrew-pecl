require_relative "../lib/php_pecl_formula"

class PhpAT80Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.12.0.tgz"
  sha256 "0d9f670b021288bb6c9b060979f191f1da773d729100673166f38b617e24317e"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "2484a4c7bbc65d4c054d6ac3ba2a5deff5617f4aab8d5da7ad7e941e448a0096"
    sha256 catalina: "b6e7ea5350843e0a436e201b61ded7e703e1f5d303eecf2da0ae9248c0fbcb59"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
