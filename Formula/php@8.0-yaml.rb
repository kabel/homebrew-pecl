require_relative "../lib/php_pecl_formula"

class PhpAT80Yaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.2.tgz"
  sha256 "119052f0461d57d86f44c252f9c9b2dd743486c701c1a0aba0aebecdd0d8b82a"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, big_sur:  "4e461e6af268e835113ee04c30fad92ac3fa4afd148da201f04037995259d719"
    sha256 cellar: :any, catalina: "9d7f12103fc9d92c6b76c06789528b0f8143786c3ca39da88d652de8b2723fc6"
  end

  depends_on "libyaml"
end
