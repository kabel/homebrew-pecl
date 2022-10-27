require_relative "../lib/php_pecl_formula"

class PhpAT74Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.21.9.tgz"
  sha256 "c3696b276437e4a96771415a894a9891081006b5a020834490bc106666c2f417"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "bc410fb45fcc11602d5929471d7e5111a464e40ca5bd80130f37d12f251e8e29"
    sha256 cellar: :any_skip_relocation, big_sur:  "c37537d4f835a4be94f4d135fbf0fad1bc99a60a22eb5954fb0d3d7d69160e07"
    sha256 cellar: :any_skip_relocation, catalina: "2ede206d36160c676305458ccb2dc475bd139762b43240bcef436a17fd868549"
  end
end
