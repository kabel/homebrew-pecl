require_relative "../lib/php_pecl_formula"

class PhpAT73Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.40.0.tgz"
  sha256 "ebfb1a2e9e8378ab65efb48b2e7d8ff23f5c5514b29f63d9558556ae6436ebf1"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "a28619801f7163db23d851aae7c47a00423cd85e4364671d3e1ded29f7b02c1d"
    sha256 cellar: :any_skip_relocation, catalina: "5f8baa0f4e0f8b99cd55b9d1589624ac00b7fb0111bcd63603c87212d0254a8f"
    sha256 cellar: :any_skip_relocation, mojave:   "ccc50fad81638182c347301503d54c7e7a3040f920a53611a72760384dd9df91"
  end
end
