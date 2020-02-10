require_relative "../lib/php_pecl_formula"

class PhpAT72Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.27.0.tgz"
  sha256 "3237f0ed837d46b3d270e566d8fb1f8cb4fa9fd8307f88db64835e47acf895c4"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "f012916c355c167f8052205d7a0edb8922970edf82ca0c9730ff9d95099dd040" => :catalina
    sha256 "318e28d1777b19fd1274112ec929b9dc1313258b95c74c54c03dcc4f582640f2" => :mojave
  end
end
