require_relative "../lib/php_pecl_formula"

class PhpAT73Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.35.0.tgz"
  sha256 "d8de1ad5df0bc424699a44133141d9d9c936d3803ae01e5510350590b8c1e4ae"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "b4c8c09e30520185317139342e722b70e13ee31b5fb165d418da108353ba4ac8" => :catalina
    sha256 "c37c6963b8b49e99676cf597afb0d4b13c5c105cddb75e1187559777b38f4b61" => :mojave
  end
end
