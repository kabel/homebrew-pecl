require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.7.5.tgz"
  sha256 "e48a07618c0ae8be628299991b5f481861c891a22544a2365a63361cc181c379"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "3f921584e47c7c72561a889ce59ccfb63ca181454ce733f15c5aec1ade31aa8f" => :catalina
    sha256 "5cc3b5be2b20cb0473c2dbbdd594c6e16f719db3802ea38b860b10bbf96c8591" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
