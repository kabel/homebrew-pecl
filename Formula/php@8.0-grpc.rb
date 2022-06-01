require_relative "../lib/php_pecl_formula"

class PhpAT80Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.46.3.tgz"
  sha256 "2aad61230afda3192eedad25be918bda628e6aa18bf1ed7e3bcf1944e6e4f4d5"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "1ca06db55069ab3fc66c7c9a58b2c2acf312a2ff7cd6334de20b78f0472886c3"
    sha256 cellar: :any_skip_relocation, big_sur:  "faa983d7163a27df2d27a834e3962250393f7c3308d4d8a68ea8075f6ee71376"
    sha256 cellar: :any_skip_relocation, catalina: "8b532fe5be8238acc2e623d5fcc3bc5d66a7df9246793123b94c54192d284f05"
  end
end
