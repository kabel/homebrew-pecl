require_relative "../lib/php_pecl_formula"

class PhpAT74Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.21.2.tgz"
  sha256 "0ac8b83a30cb2ad24017c794dc1c9433607148303a496cb9660131ae4855acf8"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "4c378773b998debf8a10589814cd987301caf77608787f6d78a1ef07ec8f5f0b"
    sha256 cellar: :any_skip_relocation, big_sur:  "8c9a9a1b20fc5b82f367ee28af2075f1eb07ed9973f04f3a9f13e407b2d5544e"
    sha256 cellar: :any_skip_relocation, catalina: "e9335debd83c6a38ec5ff3e5c6cb9084502bcf554e363fa8dce2cdf9702f399e"
  end
end
