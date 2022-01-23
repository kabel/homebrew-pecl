require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.43.0.tgz"
  sha256 "f4b41a6398666221fa03f7e01d2591b4b0e32aaf1aeca52810e6ef0c4a16d055"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "ad00d6292b8247435ae1f7f4f67fd69ef90ed319f3ef0fcd979c2f27d32f408b"
    sha256 cellar: :any_skip_relocation, catalina: "255d5a0e606bbb9b10e7ba024619a1776b4376101fd49c97e0c8880585a8ff6b"
  end
end
