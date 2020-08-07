require_relative "../lib/php_pecl_formula"

class PhpAT72Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.31.0.tgz"
  sha256 "41039c346f239ec50bf591f3417a1f171b269ff589dd59b39290d9c8b5be7afb"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "565342ffd57bb8b321a28a0c5a87c168ea536cb217ac2dfac36d1bd86e03fcd1" => :catalina
    sha256 "f64e300674a66383a867e0edeabb922777ea929b7ee46fd4d33abab5b79421b8" => :mojave
  end
end
