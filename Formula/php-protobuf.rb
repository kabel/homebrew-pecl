require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.15.5.tgz"
  sha256 "1ff816c41d2ad44e91eefd696bfe67e1ba430b2d4bbaaf770df58400573c0f61"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "e96d170e59b6dd7bb671a6bb40c78393e3c55d9cb83204463ac92e96eea013dc"
    sha256 cellar: :any_skip_relocation, catalina: "569f546f45913056af1a1901f6168a1829fff2725e7ba19a95263e880aba4591"
    sha256 cellar: :any_skip_relocation, mojave:   "dc17e02be6eb7018aaa1cce0efb3b326d84e225522e9d80b936ad3bdfb0005ca"
  end
end
