require_relative "../lib/php_pecl_formula"

class PhpAT80Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.45.0.tgz"
  sha256 "48f9c408167cd2c5df5d889526319f3ac4b16410599dab0ef693eef50e649488"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "3828cfc143ec3be557c6620315b07f66a6fa3ee83572c7b428a647ee9e974715"
    sha256 cellar: :any_skip_relocation, catalina: "53d6fabded80c24cd9a3aa9ec34b02a633efa7bf884b514c648a71f88073d515"
  end
end
