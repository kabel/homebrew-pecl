require_relative "../lib/php_pecl_formula"

class PhpAT74Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.20.1.tgz"
  sha256 "09e6846e936f5100600c00671832e0a4ded1b4fe1ab233fb71693c1476cf3816"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "72e298a94e6243d4c379e4d81a4b71604299aa83f39ec56397de5d933120c737"
    sha256 cellar: :any_skip_relocation, big_sur:  "be09d4d4bf4d7ae7f30f64dfb1a51fc83a849c1f8fc7a89d9b9335cbf4e20f24"
    sha256 cellar: :any_skip_relocation, catalina: "b6c8f1439bab0079c596dda817b596063f79cbffefec159e37e39283cb4ef7bb"
  end
end
