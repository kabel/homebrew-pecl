require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.42.0.tgz"
  sha256 "a7b9092534555ea4ea0ea79c1333afd088569eb5865b941a4a610504e387683a"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "4c5c3e93823c68f22d4f2282fb973212aad553a5727bfb42479fb04b827cad0d"
    sha256 cellar: :any_skip_relocation, catalina: "c83b8469f97aed594ec158c4405e2f0eba28a4ca8a3b0889aeca68a7d5a2983d"
  end
end
