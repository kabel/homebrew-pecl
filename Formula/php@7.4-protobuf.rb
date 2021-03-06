require_relative "../lib/php_pecl_formula"

class PhpAT74Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.15.5.tgz"
  sha256 "1ff816c41d2ad44e91eefd696bfe67e1ba430b2d4bbaaf770df58400573c0f61"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "3eea14403857e013726e73da39685ba40b9e6b50719d334d4a5c9b9fbc8fc3cf"
    sha256 cellar: :any_skip_relocation, catalina: "3c9d0204cf0ea2eef3e64bc880c6188a817081df08191fb22867850865069064"
    sha256 cellar: :any_skip_relocation, mojave:   "d504bb18abdcbf0c35d370b05dd54899569ee4c0b970922557d1ec1f96158d59"
  end
end
