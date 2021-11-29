require_relative "../lib/php_pecl_formula"

class PhpYaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.2.tgz"
  sha256 "119052f0461d57d86f44c252f9c9b2dd743486c701c1a0aba0aebecdd0d8b82a"
  revision 1
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, big_sur:  "1a9d429adf588d9ac53b075100b15c95af672a8e44a3487e0e7a9d0866687138"
    sha256 cellar: :any, catalina: "52e72206f82c2d844ace94bc7e605f41ef36ea381fa17f3c952c9e4e08c13da9"
  end

  depends_on "libyaml"
end
