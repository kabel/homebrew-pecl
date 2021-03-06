require_relative "../lib/php_pecl_formula"

class PhpApcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.20.tgz"
  sha256 "b99d40fafec06f4d132fcee53e7526ddbfc1d041ea6e04e17389dfad28f9c390"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "7f2f4ad7da3cf95922e0dbfc185a2de5ebc4221ecd8efcf9fdb4c2211a266cc5" => :catalina
    sha256 "3445613f25ce2ad6aeb613bc5628d71deb8fd9d4b90808dd4e1cb8c071ac1943" => :mojave
  end
end
