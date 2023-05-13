require_relative "../lib/php_pecl_formula"

class PhpAT81Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.54.0.tgz"
  sha256 "5ad3c1a046290f901771fc3f557db6c5bdd4208e157f42a0ab061cf10ac0dfa9"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "68b7d59c9c65e7df62e1165a55bcf9b272b0df7633ee27167c0978e96dc1c54c"
    sha256 cellar: :any_skip_relocation, monterey: "e19a25353f92a4e21eab1c999c4d4003748d8398d6cdaaab05b55683aea984d8"
    sha256 cellar: :any_skip_relocation, big_sur:  "3ccf3cb866f9a3c31b0bdd3a12a6f554dbe6c00f183e6f01848b44ad449a3099"
  end
end
