require_relative "../lib/php_pecl_formula"

class PhpAT73Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.32.0.tgz"
  sha256 "9d6297e0b624584c4d43cad492325cf96095f70529ed21b618aab5142ec21c39"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "239a6cfb7ac9b844c130f63cb5b405d015bf934eb1d0b0f4dc5d4a9af2c77d9e" => :catalina
    sha256 "20df287a3c7b9c93413a7e13f0daba18e6e953fa104aefbe768eb58af8f102a7" => :mojave
  end
end
