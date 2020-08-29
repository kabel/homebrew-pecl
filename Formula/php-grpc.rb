require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.31.1.tgz"
  sha256 "dcb3d3f8dcc87b411e18ab3782952ee417818ea0b3df01ac109c4e7629470d97"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "ce17b55c62136dd127dc48a89f749b65c33d79f7d6f77667b7cbe47de4e01b1e" => :catalina
    sha256 "3f39933c11e65fa1b01be66c3064ac52c9fc2ac2b420f0f1a6642ba9a6b1af90" => :mojave
  end
end
