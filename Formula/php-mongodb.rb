require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.8.0.tgz"
  sha256 "096f02f240f1c7108dbbc9b4cd93e53e0517c8a85aaf99ac2fdd368f149a23b1"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "3f921584e47c7c72561a889ce59ccfb63ca181454ce733f15c5aec1ade31aa8f" => :catalina
    sha256 "5cc3b5be2b20cb0473c2dbbdd594c6e16f719db3802ea38b860b10bbf96c8591" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
