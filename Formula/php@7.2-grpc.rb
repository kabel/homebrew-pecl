require_relative "../lib/php_pecl_formula"

class PhpAT72Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.30.0.tgz"
  sha256 "7201db290ce5083deb1e74076432a648deaca80224c5e96398bce61cb7c76a67"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "b9b5072a39db6f7aa85ce0a60f4fc4747e260bd3c7ad53959c4465af794942ca" => :catalina
    sha256 "5246a1033beb2ecab9a57ee58cebf99c5f62442ca8aab664d6390b0f8428c5e3" => :mojave
  end
end
