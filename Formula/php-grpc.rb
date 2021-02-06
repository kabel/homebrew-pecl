require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.35.0.tgz"
  sha256 "d8de1ad5df0bc424699a44133141d9d9c936d3803ae01e5510350590b8c1e4ae"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "6608d8232df88676b43a1e9a2f8ee021bc91c8dfc54ed76de8087af4a507e07e" => :catalina
    sha256 "e2b39187eb5a9c00d32f08937e43050d08510dd3f12b58a0ebba9bc2b9348335" => :mojave
  end
end
