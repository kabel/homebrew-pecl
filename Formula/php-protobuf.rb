require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.20.1.tgz"
  sha256 "09e6846e936f5100600c00671832e0a4ded1b4fe1ab233fb71693c1476cf3816"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "86039046176a9c2b931e2b3dac6aaf531d7a304cb4c5f1ddd55a7bcf9013936f"
    sha256 cellar: :any_skip_relocation, big_sur:  "1f105fae7e0b3e55c922a7afbad4aefccaeea3bfcd2ec574ee0016fc2c75064a"
    sha256 cellar: :any_skip_relocation, catalina: "20bf55c9397db267e75d8c1edd835e5e7c3e8db5be8291e5ef5d12080df4e49c"
  end
end
