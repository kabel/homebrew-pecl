require_relative "../lib/php_pecl_formula"

class PhpAT80Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.19.3.tgz"
  sha256 "7ef8a2a060cce94c969e42d22dc5da68e81682a29e32a9a7f5e6840d40fe2c18"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "fe1cae62b6ec37363b444ccecc1acb2374d75da2585cc6a8ae54f196fcbfbea9"
    sha256 cellar: :any_skip_relocation, catalina: "49a60b5508aecc3dc72a9c381fb014f38e24b2e7e994016c687d8ac1cdadf4fb"
  end
end
