require_relative "../lib/php_pecl_formula"

class PhpAT80Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.54.0.tgz"
  sha256 "5ad3c1a046290f901771fc3f557db6c5bdd4208e157f42a0ab061cf10ac0dfa9"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "e3d3d118f912b57429ddf3eb552bf1a99e1d82861425c28a67caaaf140ae4456"
    sha256 cellar: :any_skip_relocation, monterey: "62a38a1858ad1a4d3c0b68316691c65c2d467f8b71cb17bdccbf980da1fc46b8"
    sha256 cellar: :any_skip_relocation, big_sur:  "0bcc25502812b0707576c857ecfb0547c39c464364cc049ddf6e6f2ee001fe80"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula
end
