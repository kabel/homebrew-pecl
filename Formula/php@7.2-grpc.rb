require_relative "../lib/php_pecl_formula"

class PhpAT72Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.28.0.tgz"
  sha256 "8e6da7d0f2aa46ffbae1edf325345759ea97795ede1610b30b7518e8d3523109"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "4fe6aa3dfbf573ff83419f9f838458ed0bac88721e157a3d5fd3871c9f8b688c" => :catalina
    sha256 "9cae8ab567812899e3d291362166624d7ceddf11b06006a21e95ce7df09d47d7" => :mojave
  end
end
