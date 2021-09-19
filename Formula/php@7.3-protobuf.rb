require_relative "../lib/php_pecl_formula"

class PhpAT73Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.18.0.tgz"
  sha256 "598305799f14aa9e947bbc39679778c374d77f2c93a39ab3dd3fa4f78f68cdad"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "a50cf794a949a0da2bbb20461490ee9d92782639d4018e931283dae650cab1cf"
    sha256 cellar: :any_skip_relocation, catalina: "f700fcc71665aa7a88ad6bd2a099c624ac02bb13936c3eed218b62ebc47fa1e3"
    sha256 cellar: :any_skip_relocation, mojave:   "d6c8774f922d1927a8c77abc38f05ea51d79f9e4cb79ea289864106810630bdb"
  end
end
