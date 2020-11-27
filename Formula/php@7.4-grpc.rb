require_relative "../lib/php_pecl_formula"

class PhpAT74Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.33.1.tgz"
  sha256 "aa26eb1fb0d66216f709105d2605a8a72b20407076d1e9bb0bd7cb17a277582c"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "71d9ffbeaefa2345797f5ad8de041ef04125142006ea3ebb21479f18c68d989c" => :catalina
    sha256 "d7675aa935b488cfd388b39026b2fc69e5ad4949920bb02e5ed178cccf360fdc" => :mojave
  end
end
