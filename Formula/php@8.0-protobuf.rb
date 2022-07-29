require_relative "../lib/php_pecl_formula"

class PhpAT80Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.21.4.tgz"
  sha256 "be17e852eeb72a19dd7d04e2213b539daa85545f4e58c09a2dfffd3d48a82a44"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "da401fae5729caafd93732e72b1410f92aaf5cf3db2dfb61090f28bf293be835"
    sha256 cellar: :any_skip_relocation, big_sur:  "801645ae8da62971a836ed383d336698865590d801cde5f42d9c51d1fca8897f"
    sha256 cellar: :any_skip_relocation, catalina: "6a81f759df2ce548a45018a57fc2209bb55ce4326e7bbd085f949ab5a9a1fc81"
  end
end
