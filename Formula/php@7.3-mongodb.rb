require_relative "../lib/php_pecl_formula"

class PhpAT73Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.9.1.tgz"
  sha256 "e9d1ce23168385aae24d9b516cab3d67504c85e800569e0fcf2f2125bcd6fed7"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 catalina: "13f67725541be4a626b5d2a92bb6ad8ddd91e21f7bedacefaed48bd28d4b31af"
    sha256 mojave:   "b9d5f36ef0f966b069e8c67ad3d37a8ea36be1b22b81a1113ceb695b447bf9c1"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
