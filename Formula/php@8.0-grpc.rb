require_relative "../lib/php_pecl_formula"

class PhpAT80Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.43.0.tgz"
  sha256 "f4b41a6398666221fa03f7e01d2591b4b0e32aaf1aeca52810e6ef0c4a16d055"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "93445a6eb61314013d5388e5e91b3db19820758a3e50c02ab99623a62abe5f11"
    sha256 cellar: :any_skip_relocation, catalina: "d540c2780982d953ecf398ddfbfbe3b90297467b39108a91db3564aa7ee1645a"
  end
end
