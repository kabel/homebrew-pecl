require_relative "../lib/php_pecl_formula"

class PhpAT80Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.42.0.tgz"
  sha256 "a7b9092534555ea4ea0ea79c1333afd088569eb5865b941a4a610504e387683a"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "90facf13f40da1f5cdef91faee3c6ab878cd0c83bb6c9c5307e0eebd5e5865ae"
    sha256 cellar: :any_skip_relocation, catalina: "bb19335f1d6a1de0826b885b0fc0c6b302b2204a250cd1a6f19680464d791b31"
  end
end
