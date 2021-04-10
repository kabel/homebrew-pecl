require_relative "../lib/php_pecl_formula"

class PhpAT74Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.37.0.tgz"
  sha256 "591317e428276a05ca578dce778d4ade47d777a1efa9509db4dd480f82a5e822"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "9554acac13e8848e70eb42fbb3639071a9a73d3f9cef7602e5feb360bfa0de59"
    sha256 cellar: :any_skip_relocation, catalina: "c7ffc343e70a3a83f07008c32fb75b5452e2e12a14a3133009d10ab801317255"
    sha256 cellar: :any_skip_relocation, mojave:   "06ebf27f6b5ce491be14e9b0024ad49eebbeacbb5d688caf7f5d6cc258dcc8b7"
  end
end
