require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.32.0.tgz"
  sha256 "9d6297e0b624584c4d43cad492325cf96095f70529ed21b618aab5142ec21c39"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "3700eeea7ce82e1eca4cf2c6ba3a6ed4f965af4b36deb3d466371f5fb966d51b" => :catalina
    sha256 "5b2b2ed3ba375892e52196df460296578e522ce283af290282eeee6d27d82c53" => :mojave
  end
end
