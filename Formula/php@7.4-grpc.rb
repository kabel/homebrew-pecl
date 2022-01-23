require_relative "../lib/php_pecl_formula"

class PhpAT74Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.43.0.tgz"
  sha256 "f4b41a6398666221fa03f7e01d2591b4b0e32aaf1aeca52810e6ef0c4a16d055"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "56bfcafab09ffa4e94a0598d81bde338facedd8e6edf4f14b24d5fcfdba44e8c"
    sha256 cellar: :any_skip_relocation, catalina: "26783c07e62cb6b289e1a2c5c30808d00af1592a9b8d7f16001db22955ac3b73"
  end
end
