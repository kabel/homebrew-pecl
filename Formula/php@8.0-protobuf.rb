require_relative "../lib/php_pecl_formula"

class PhpAT80Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.21.6.tgz"
  sha256 "bf225b5ac63f69dacc2b63cb76ef999b5a5aa2963ee6a72dd98d804b66bbd208"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "82e0720bae8a0148c876e387121e94c0f4cfc20810a2e47d47bd6c79dcd3d78c"
    sha256 cellar: :any_skip_relocation, big_sur:  "d5fb671f21fd58e29c8ed4df87b128f3583673d2b4e6e5ebbab07ccb975c9755"
    sha256 cellar: :any_skip_relocation, catalina: "bb75e0d000719018f60671ebfbc34bfd3f02cd9c706bc21385508f2df19d2c04"
  end
end
