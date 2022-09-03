require_relative "../lib/php_pecl_formula"

class PhpAT80Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.21.5.tgz"
  sha256 "07ccad172509f1f2c1c0799a297c5f3b2d21ead4442e3a9ce48c54525fd8539c"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "13f88a9faf8892b21ac13babc62a18ab9e82eb4d670bbaec990434bb424a597d"
    sha256 cellar: :any_skip_relocation, big_sur:  "6bd9e694382d93c0fe87ec5e95fa216ef1c8c8f7b5427d67be42dda5179e394d"
    sha256 cellar: :any_skip_relocation, catalina: "6152a2c70b86aaa85226b16d49b66aaa22fd73e6d851ff3a22294169eca45ef5"
  end
end
