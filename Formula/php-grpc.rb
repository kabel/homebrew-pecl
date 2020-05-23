require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.29.1.tgz"
  sha256 "068df1315becd95caf4b0c299c0c8ed7a172c0f36e566f4f23ed54d35d14f5f3"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "33e6c8dd8120a6b2bd08f7da1b087c2b9f0537dff39080443df0a9ea807826c1" => :catalina
    sha256 "c394a52046c6bb2e434fc7ad90eccaf2fe1b3ce87d5a5bc1bdf2d720f2e0bec9" => :mojave
  end
end
