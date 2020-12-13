require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.34.0.tgz"
  sha256 "70a0f34ac30608e52d83bba9639b2cf6878942813f4aee6d6e842e689ea27485"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "49ed72ca6f8b452315676a61d28d07e89b6a883333bec16e39f7e341319a53e1" => :catalina
    sha256 "170d420b8e87d101039aabc853c01fe5be5b5aeac4f9ea3dcff752f7b8e74c6e" => :mojave
  end
end
