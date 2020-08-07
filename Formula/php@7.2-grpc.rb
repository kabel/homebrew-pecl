require_relative "../lib/php_pecl_formula"

class PhpAT72Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.31.0.tgz"
  sha256 "41039c346f239ec50bf591f3417a1f171b269ff589dd59b39290d9c8b5be7afb"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "db30f0fc3e9e360a7b82f946d5e0d0c23e786d6cd6f114c691dc93da46233f64" => :catalina
    sha256 "b57d32aac8dd34e65f97d8bccdbed748b627b95a9b31eb7f35ac826a6da91587" => :mojave
  end
end
