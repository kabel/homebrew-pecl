require_relative "../lib/php_pecl_formula"

class PhpAT73Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.27.0.tgz"
  sha256 "3237f0ed837d46b3d270e566d8fb1f8cb4fa9fd8307f88db64835e47acf895c4"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "a82aac22ebd522fa3ae3c671f9a321a89297eb7723f68b2c883fe78d634af6a9" => :catalina
    sha256 "87b628d07d6462352a9745a42fbf67da8f546fba9b955eff1ce76ce8d8dbd228" => :mojave
  end
end
