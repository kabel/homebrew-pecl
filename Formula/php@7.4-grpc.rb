require_relative "../lib/php_pecl_formula"

class PhpAT74Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.34.0.tgz"
  sha256 "70a0f34ac30608e52d83bba9639b2cf6878942813f4aee6d6e842e689ea27485"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "aa241f586df33e60bd6b636f161a72559450d2b0291adaa886b9a025478e8af7" => :catalina
    sha256 "ccefad41cbe13cf470d55ff043a47f99e68eeb6089e9b5604b0ab875a0162f4e" => :mojave
  end
end
