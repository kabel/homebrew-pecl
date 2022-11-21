require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.21.9.tgz"
  sha256 "c3696b276437e4a96771415a894a9891081006b5a020834490bc106666c2f417"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "62875dff24c90f21c8799b883a557dd4dd57dfc2aa4fa3abc2a7fae74e6bb44d"
    sha256 cellar: :any_skip_relocation, monterey: "87b68d5723968545a51f2a5d217908bc6931ed3daaddac703b27666cef1c9299"
    sha256 cellar: :any_skip_relocation, big_sur:  "5451c89c540e75bad91e420affc8023aaa7a50b720fd16d720375ccb45854ded"
    sha256 cellar: :any_skip_relocation, catalina: "7acfc0ae2d81bf1bf20a72adcd6eb2b70df37c6a57736d6e30690b1001b79c12"
  end
end
