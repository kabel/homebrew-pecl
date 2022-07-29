require_relative "../lib/php_pecl_formula"

class PhpAT80Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.21.4.tgz"
  sha256 "be17e852eeb72a19dd7d04e2213b539daa85545f4e58c09a2dfffd3d48a82a44"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "69760a1d5de7f9611c751995c4b4f2c2919ed4c6443cbc7afc12c862cc0d2f20"
    sha256 cellar: :any_skip_relocation, big_sur:  "6fef4c5e8b088fd5c670d797f2237545a0a15488a8d6913bce874d2a801b6976"
    sha256 cellar: :any_skip_relocation, catalina: "8d7c2caf5591ed53cf42d18ec3041cc92ccbc1e06ddeddfa1d832c40bfd1c027"
  end
end
