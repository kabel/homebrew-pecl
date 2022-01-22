require_relative "../lib/php_pecl_formula"

class PhpAT80Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.43.0.tgz"
  sha256 "f4b41a6398666221fa03f7e01d2591b4b0e32aaf1aeca52810e6ef0c4a16d055"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "b685068c3470b7dd478c39777bfd7cd5cf49587d08198393647a536c463b2736"
    sha256 cellar: :any_skip_relocation, catalina: "b03de268583c8e4022b41cf8786b0d185e0ec8d9606de9780a6fc1d2a9d10eae"
  end
end
