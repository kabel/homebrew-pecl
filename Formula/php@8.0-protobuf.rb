require_relative "../lib/php_pecl_formula"

class PhpAT80Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.21.9.tgz"
  sha256 "c3696b276437e4a96771415a894a9891081006b5a020834490bc106666c2f417"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "79c58da8e8eca38d50a01e62cf98eadfd25b6a1e8fbc4b2666c20303967811ca"
    sha256 cellar: :any_skip_relocation, big_sur:  "df81cb4bca84dde67949216aba9610e69657cb214191657acfa31690eaf2bc82"
    sha256 cellar: :any_skip_relocation, catalina: "9c8fc13d269048a400febe1deffd5471fb648daba602c3ecff3485da0771a172"
  end
end
