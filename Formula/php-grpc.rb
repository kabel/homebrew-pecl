require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.72.0.tgz"
  sha256 "715fe230c0b185968e92f8f752d61a878f9eb5346873848e47ff65d0af6947dc"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "65d8ca862a64e54a1a375068fd49f9df514e399e73e36f1cf5c59c9e75cb7f08"
    sha256 cellar: :any_skip_relocation, ventura: "4be90295c15245966dd2581b2c4ec0258d86387143c2d4a01fae4cb8202314a5"
  end
end
