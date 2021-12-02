require_relative "../lib/php_pecl_formula"

class PhpAT80Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.19.1.tgz"
  sha256 "9003cd3e7bdb0ab9862133371e3a6c9fad9301257c78d0a2cc537cfb5f88e9b6"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "fe1cae62b6ec37363b444ccecc1acb2374d75da2585cc6a8ae54f196fcbfbea9"
    sha256 cellar: :any_skip_relocation, catalina: "49a60b5508aecc3dc72a9c381fb014f38e24b2e7e994016c687d8ac1cdadf4fb"
  end
end
