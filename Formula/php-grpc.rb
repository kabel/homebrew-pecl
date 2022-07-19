require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.47.0.tgz"
  sha256 "76e82b0786962ca1514ef43a96102b53156a2f114261baa29ef3383ee659cd6b"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "50a5dd33835007dfe6e9015e9550607a52909f13cec00516e81703cefe0feda1"
    sha256 cellar: :any_skip_relocation, big_sur:  "a5c271027168948f9b663beb66c75fdba74fe4644057999bb183f67ef4930429"
    sha256 cellar: :any_skip_relocation, catalina: "ac6c52cd3f3599032022aa3d41a43975f18d10e45f3e84a591e270255203b47a"
  end
end
