require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.32.0.tgz"
  sha256 "9d6297e0b624584c4d43cad492325cf96095f70529ed21b618aab5142ec21c39"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "4f77c881865db722e06241e8a4ff4d0eaa84a98b51b73f4611ac37b5ab800e0e" => :catalina
    sha256 "889762dbdac6592b3f7473cdd93bb55c98c2f464da12b4769e5d9b471323ed6f" => :mojave
  end
end
