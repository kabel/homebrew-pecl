require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.47.0.tgz"
  sha256 "76e82b0786962ca1514ef43a96102b53156a2f114261baa29ef3383ee659cd6b"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "f38b9b63ff005c25d9d099793dc4c3b87e4f7b0bcde55acf0c3b6f5b432181ae"
    sha256 cellar: :any_skip_relocation, big_sur:  "8fb83616f7ecc8248ba8b35dabc325cf4ad6f06d6eb7a911ef941af086cc2e99"
    sha256 cellar: :any_skip_relocation, catalina: "e76dfb46ca6240c742c80df450a741d7967ad903f833dd99aa84bc9b7b71206d"
  end
end
