require_relative "../lib/php_pecl_formula"

class PhpAT72Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.31.1.tgz"
  sha256 "dcb3d3f8dcc87b411e18ab3782952ee417818ea0b3df01ac109c4e7629470d97"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "eccaed07ff6494a0eade7bcc09300e712e743fc1f4838de55a28664c415dc231" => :catalina
    sha256 "2e7d110dadd78fb3b18ba8151c3837410ba79b37c5a08494f9e80275b90e3808" => :mojave
  end
end
