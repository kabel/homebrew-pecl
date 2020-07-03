require_relative "../lib/php_pecl_formula"

class PhpAT73Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.30.0.tgz"
  sha256 "7201db290ce5083deb1e74076432a648deaca80224c5e96398bce61cb7c76a67"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "050b47da9d62dde7a2082dca398a91d1570a1bcc8a3e89a7f39667b4f4306ef1" => :catalina
    sha256 "328d8e660e3f6622f54e02bb12eef482e76082d99d96b016d7b7e3d9ac0f4e6c" => :mojave
  end
end
