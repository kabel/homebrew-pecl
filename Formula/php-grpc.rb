require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.33.1.tgz"
  sha256 "aa26eb1fb0d66216f709105d2605a8a72b20407076d1e9bb0bd7cb17a277582c"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "3700eeea7ce82e1eca4cf2c6ba3a6ed4f965af4b36deb3d466371f5fb966d51b" => :catalina
    sha256 "5b2b2ed3ba375892e52196df460296578e522ce283af290282eeee6d27d82c53" => :mojave
  end
end
