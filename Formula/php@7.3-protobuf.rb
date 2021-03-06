require_relative "../lib/php_pecl_formula"

class PhpAT73Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.15.5.tgz"
  sha256 "1ff816c41d2ad44e91eefd696bfe67e1ba430b2d4bbaaf770df58400573c0f61"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "5d9154023c47c1255137e6b9149626944cef58c3f5d88a562a1d5c5a1711b5e3"
    sha256 cellar: :any_skip_relocation, catalina: "c6197fbe33f3d2d501c1d8c721cc6391df0f48eb65a1da2b913726f4520ed770"
    sha256 cellar: :any_skip_relocation, mojave:   "92437eff7cd23173e1464fca860c6bb351ec51ba236661d1833e9656dc4b48c8"
  end
end
