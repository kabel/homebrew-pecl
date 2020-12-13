require_relative "../lib/php_pecl_formula"

class PhpAT74Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.34.0.tgz"
  sha256 "70a0f34ac30608e52d83bba9639b2cf6878942813f4aee6d6e842e689ea27485"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "b3e8e1c6ac6578d097d07d50677e2a724cd1501c3041e61153b9c7e5539ffb85" => :catalina
    sha256 "5c4d008781b5b018bbd753ae16f2e18ee0ee05eb379901776374e5b05d74c5f1" => :mojave
  end
end
