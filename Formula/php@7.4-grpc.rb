require_relative "../lib/php_pecl_formula"

class PhpAT74Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.42.0.tgz"
  sha256 "a7b9092534555ea4ea0ea79c1333afd088569eb5865b941a4a610504e387683a"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "b044dcb47874696ed8c2a6103c15c5239b15bd456ee96125e2dbf44447de43de"
    sha256 cellar: :any_skip_relocation, catalina: "b193d78106b4cdee6fbb4e34eb6ff1842f3b339ec31f27b3eec26e1a98a3339b"
    sha256 cellar: :any_skip_relocation, mojave:   "2310b9946345022be271227c3b4498ebb6a82077f65a9d3d58677e1838e59eec"
  end
end
