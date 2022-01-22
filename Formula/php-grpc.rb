require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.43.0.tgz"
  sha256 "f4b41a6398666221fa03f7e01d2591b4b0e32aaf1aeca52810e6ef0c4a16d055"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "4c5c3e93823c68f22d4f2282fb973212aad553a5727bfb42479fb04b827cad0d"
    sha256 cellar: :any_skip_relocation, catalina: "c83b8469f97aed594ec158c4405e2f0eba28a4ca8a3b0889aeca68a7d5a2983d"
  end
end
