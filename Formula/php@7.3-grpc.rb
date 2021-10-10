require_relative "../lib/php_pecl_formula"

class PhpAT73Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.41.0.tgz"
  sha256 "62d7320d7e26db29254bbc5770b70ba1f902952b9c6f89d34461019e7f8086a2"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "5b71e49b96db08670ee0d9d6fd477c34baa45389e0fbe127fab664dbe25279a8"
    sha256 cellar: :any_skip_relocation, catalina: "c0af44cd09aac8505d1ffd328d20b6d0ae656f24180bd22808a809cae1b075f1"
    sha256 cellar: :any_skip_relocation, mojave:   "b361ae547747a82bc2b9856a2f7183a1917b57450e584a769d84434b527b4439"
  end
end
