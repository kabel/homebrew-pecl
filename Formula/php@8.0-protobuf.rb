require_relative "../lib/php_pecl_formula"

class PhpAT80Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.21.9.tgz"
  sha256 "c3696b276437e4a96771415a894a9891081006b5a020834490bc106666c2f417"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "69bf14abc4f0d9b8dc7e10a32e787e83672c17666d2b814a73784d1c288d06ae"
    sha256 cellar: :any_skip_relocation, monterey: "fca1285d15a5e713014195360d7ecf0a47c59d1e3c06090ee5d58b9e4444aefb"
    sha256 cellar: :any_skip_relocation, big_sur:  "70560ef86e8dc19737b1ab079cba5ac271a7056711a22c670f6c1e1464597221"
    sha256 cellar: :any_skip_relocation, catalina: "c46f35ebcb3e07cec3de3bbf8faa7434294edd86f158dfd0a0f8b0c94db2586e"
  end
end
