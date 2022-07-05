require_relative "../lib/php_pecl_formula"

class PhpAT80Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.21.2.tgz"
  sha256 "0ac8b83a30cb2ad24017c794dc1c9433607148303a496cb9660131ae4855acf8"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "911a0f3315b70bae118c1c6dd30f6df1e9cc2300d977eff61aab97c58c7fad47"
    sha256 cellar: :any_skip_relocation, big_sur:  "59d13b24d2c5eebd9f2fb055ac7b74a27d32c17bde6ea5cdd6a7d789cb4beb2e"
    sha256 cellar: :any_skip_relocation, catalina: "b79c6c57b3f533b11c3b74ca6d1eab85b4a62562a256fa91ab210455e8ed71a1"
  end
end
