require_relative "../lib/php_pecl_formula"

class PhpAT73Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.35.0.tgz"
  sha256 "d8de1ad5df0bc424699a44133141d9d9c936d3803ae01e5510350590b8c1e4ae"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "9c0e9d9111e586c9d329a976dae01d574f51d0a959c506f485755367462ccb55" => :catalina
    sha256 "d81a9a867a68f575e44d3fe3e43453b84a56aadfd4614731ab55256f0703a0af" => :mojave
  end
end
