require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.42.0.tgz"
  sha256 "a7b9092534555ea4ea0ea79c1333afd088569eb5865b941a4a610504e387683a"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "cc77a8c8db786a29b8429641e01ea5e77541489b439d8a1b366b1d68d8394ad8"
    sha256 cellar: :any_skip_relocation, catalina: "f61ab91bce2c3a6fb2323d39eca263d43fe9eb1eab701e5809539793b2599a47"
  end
end
