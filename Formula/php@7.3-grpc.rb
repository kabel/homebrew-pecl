require_relative "../lib/php_pecl_formula"

class PhpAT73Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.29.1.tgz"
  sha256 "068df1315becd95caf4b0c299c0c8ed7a172c0f36e566f4f23ed54d35d14f5f3"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "1a9c1304e1895b767f0241958b6210b752740154021049860a514a5ca09ee5cf" => :catalina
    sha256 "4d763e4f08aa8890217a363a6180335c3422049e1c60e7268a7e6b40db18edae" => :mojave
  end
end
