require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.28.0.tgz"
  sha256 "8e6da7d0f2aa46ffbae1edf325345759ea97795ede1610b30b7518e8d3523109"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "33e6c8dd8120a6b2bd08f7da1b087c2b9f0537dff39080443df0a9ea807826c1" => :catalina
    sha256 "c394a52046c6bb2e434fc7ad90eccaf2fe1b3ce87d5a5bc1bdf2d720f2e0bec9" => :mojave
  end
end
