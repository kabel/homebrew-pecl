require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.28.0.tgz"
  sha256 "8e6da7d0f2aa46ffbae1edf325345759ea97795ede1610b30b7518e8d3523109"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "e9d090fb199c646fce5bf8880a0276ad2e15a595a8bba2b87eff94e26b1a03a2" => :catalina
    sha256 "d41009f5a5df4087eab202586f05a28596892d3f0e68218954629525fd347d58" => :mojave
  end
end
