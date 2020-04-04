require_relative "../lib/php_pecl_formula"

class PhpAT73Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.28.0.tgz"
  sha256 "8e6da7d0f2aa46ffbae1edf325345759ea97795ede1610b30b7518e8d3523109"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "a82aac22ebd522fa3ae3c671f9a321a89297eb7723f68b2c883fe78d634af6a9" => :catalina
    sha256 "87b628d07d6462352a9745a42fbf67da8f546fba9b955eff1ce76ce8d8dbd228" => :mojave
  end
end
