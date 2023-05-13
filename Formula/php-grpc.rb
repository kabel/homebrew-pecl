require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.54.0.tgz"
  sha256 "5ad3c1a046290f901771fc3f557db6c5bdd4208e157f42a0ab061cf10ac0dfa9"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "94ae6e8706b6efb813065f9611d617efa0026a77c4cbacf9816ec71dc1f6fc05"
    sha256 cellar: :any_skip_relocation, monterey: "1d55b6b14fe65c46b066363b731d4b8e61fc58f189abd8201db09db669bfec3f"
    sha256 cellar: :any_skip_relocation, big_sur:  "25149009f445c7dc13ce5e54778ea6154d8e03e4d66f97b1b577674166ed080e"
  end
end
