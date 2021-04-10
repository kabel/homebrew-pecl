require_relative "../lib/php_pecl_formula"

class PhpAT73Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.37.0.tgz"
  sha256 "591317e428276a05ca578dce778d4ade47d777a1efa9509db4dd480f82a5e822"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "ddcafbd40d75eca0d1046e60010a88da0c083dcbccf9beffd1671ff2f18e8817"
    sha256 cellar: :any_skip_relocation, catalina: "262e10f38ae1ca47cc0b08f317327d6cf6dd21d7871ce5bffa3b299fbf4585b8"
    sha256 cellar: :any_skip_relocation, mojave:   "e803920ca0e5d2f77dc098cb23b7ad286a1801c1ce9e9985b5e2d0ac0e721576"
  end
end
