require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.27.0.tgz"
  sha256 "3237f0ed837d46b3d270e566d8fb1f8cb4fa9fd8307f88db64835e47acf895c4"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "e9d090fb199c646fce5bf8880a0276ad2e15a595a8bba2b87eff94e26b1a03a2" => :catalina
    sha256 "d41009f5a5df4087eab202586f05a28596892d3f0e68218954629525fd347d58" => :mojave
  end
end
