require_relative "../lib/php_pecl_formula"

class PhpAT80Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.42.0.tgz"
  sha256 "a7b9092534555ea4ea0ea79c1333afd088569eb5865b941a4a610504e387683a"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "b685068c3470b7dd478c39777bfd7cd5cf49587d08198393647a536c463b2736"
    sha256 cellar: :any_skip_relocation, catalina: "b03de268583c8e4022b41cf8786b0d185e0ec8d9606de9780a6fc1d2a9d10eae"
  end
end
