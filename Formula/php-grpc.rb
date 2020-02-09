require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.27.0.tgz"
  sha256 "3237f0ed837d46b3d270e566d8fb1f8cb4fa9fd8307f88db64835e47acf895c4"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "741056675fbcfdf63c2927d740fcb6d8e0ee7c33303d9be2dd11bd7d1ad452bc" => :mojave
    sha256 "70b8bcec4386be37f1715f3199ef748656f5ee11a3471014149777aa653cbfc7" => :high_sierra
  end
end
