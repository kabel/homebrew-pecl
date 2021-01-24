require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.35.0.tgz"
  sha256 "d8de1ad5df0bc424699a44133141d9d9c936d3803ae01e5510350590b8c1e4ae"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "49ed72ca6f8b452315676a61d28d07e89b6a883333bec16e39f7e341319a53e1" => :catalina
    sha256 "170d420b8e87d101039aabc853c01fe5be5b5aeac4f9ea3dcff752f7b8e74c6e" => :mojave
  end
end
