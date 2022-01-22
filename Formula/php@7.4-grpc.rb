require_relative "../lib/php_pecl_formula"

class PhpAT74Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.43.0.tgz"
  sha256 "f4b41a6398666221fa03f7e01d2591b4b0e32aaf1aeca52810e6ef0c4a16d055"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "86f03550368fff03e9b4362f3fb14cc18c21e0f2690c22a74bc0a726985f1ca3"
    sha256 cellar: :any_skip_relocation, catalina: "82689bbd45a7ca5b8614237235d1ff4cb776678f038d48936988afe87b877e2c"
  end
end
