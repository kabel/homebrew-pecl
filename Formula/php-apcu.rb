require_relative "../lib/php_pecl_formula"

class PhpApcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.19.tgz"
  sha256 "837fbc99d5c79efb510fafaf585ef0c06e02baf8310a7d77f93e402c93276ce0"
  revision 1
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "7f2f4ad7da3cf95922e0dbfc185a2de5ebc4221ecd8efcf9fdb4c2211a266cc5" => :catalina
    sha256 "3445613f25ce2ad6aeb613bc5628d71deb8fd9d4b90808dd4e1cb8c071ac1943" => :mojave
  end
end
