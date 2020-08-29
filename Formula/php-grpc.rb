require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.31.1.tgz"
  sha256 "dcb3d3f8dcc87b411e18ab3782952ee417818ea0b3df01ac109c4e7629470d97"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "4f77c881865db722e06241e8a4ff4d0eaa84a98b51b73f4611ac37b5ab800e0e" => :catalina
    sha256 "889762dbdac6592b3f7473cdd93bb55c98c2f464da12b4769e5d9b471323ed6f" => :mojave
  end
end
