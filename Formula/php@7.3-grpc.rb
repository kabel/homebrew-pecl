require_relative "../lib/php_pecl_formula"

class PhpAT73Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.28.0.tgz"
  sha256 "8e6da7d0f2aa46ffbae1edf325345759ea97795ede1610b30b7518e8d3523109"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "1a9c1304e1895b767f0241958b6210b752740154021049860a514a5ca09ee5cf" => :catalina
    sha256 "4d763e4f08aa8890217a363a6180335c3422049e1c60e7268a7e6b40db18edae" => :mojave
  end
end
