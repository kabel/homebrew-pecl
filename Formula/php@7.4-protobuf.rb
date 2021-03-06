require_relative "../lib/php_pecl_formula"

class PhpAT74Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.15.5.tgz"
  sha256 "1ff816c41d2ad44e91eefd696bfe67e1ba430b2d4bbaaf770df58400573c0f61"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "a22108bf67b8ebf7e7a2c90b1091c65b55bd53489f304ccd3df611e2a0005cf4"
    sha256 cellar: :any_skip_relocation, catalina: "053b573ad31b6ae87f5e0b3c289237237a2dffa93a09fad473bdd95b49789233"
    sha256 cellar: :any_skip_relocation, mojave:   "04d2aa255d642a1e4fed92086b84614f1c0976c253905dd94538c7fc3b534fc2"
  end
end
