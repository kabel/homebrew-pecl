require_relative "../lib/php_pecl_formula"

class PhpAT73Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.31.0.tgz"
  sha256 "41039c346f239ec50bf591f3417a1f171b269ff589dd59b39290d9c8b5be7afb"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "050b47da9d62dde7a2082dca398a91d1570a1bcc8a3e89a7f39667b4f4306ef1" => :catalina
    sha256 "328d8e660e3f6622f54e02bb12eef482e76082d99d96b016d7b7e3d9ac0f4e6c" => :mojave
  end
end
