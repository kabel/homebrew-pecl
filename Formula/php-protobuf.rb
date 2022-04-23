require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.20.1.tgz"
  sha256 "09e6846e936f5100600c00671832e0a4ded1b4fe1ab233fb71693c1476cf3816"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "4fbc28678be6b20a5a2d93c23d3500a4b8a9aea3764e95491669fb73d1c5ddc9"
    sha256 cellar: :any_skip_relocation, big_sur:  "8e7c257092cb0156c078b25865e44278838c9238e968203fe38252b88acfb9eb"
    sha256 cellar: :any_skip_relocation, catalina: "2294c4a430a3a34e2d6016ae588d87466487a7529fdd4fee0cd554dc5d495947"
  end
end
