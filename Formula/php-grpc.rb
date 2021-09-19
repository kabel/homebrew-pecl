require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.40.0.tgz"
  sha256 "ebfb1a2e9e8378ab65efb48b2e7d8ff23f5c5514b29f63d9558556ae6436ebf1"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "8843aff0b1dbaccc8bb2796853a09b717d0da647c3cbde63ee3e4fa8cf6d2503"
    sha256 cellar: :any_skip_relocation, catalina: "35d9d002f8784136fb384f510ac5ebc54b9675f81226f730d9c434a82e163169"
    sha256 cellar: :any_skip_relocation, mojave:   "ee5544f768a3594c094ad2951924645e6c186684c9a22e6c4d8d78bc9af1a155"
  end
end
