require_relative "../lib/php_pecl_formula"

class PhpAT73Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.31.0.tgz"
  sha256 "41039c346f239ec50bf591f3417a1f171b269ff589dd59b39290d9c8b5be7afb"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "39d350aeb1d06981f7cbd7a4a1eac4fc51cf0836fcd6ed1fcaa975da44d04820" => :catalina
    sha256 "459331f357f3e8a0ba679462ecc42f9d3235a5ae759bb404c87fd15fb1a8ff71" => :mojave
  end
end
