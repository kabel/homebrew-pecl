require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.30.0.tgz"
  sha256 "7201db290ce5083deb1e74076432a648deaca80224c5e96398bce61cb7c76a67"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "263b165a4f091777cad459b4fca219922609128940f9d122faa124e48521a0d3" => :catalina
    sha256 "6e23e8374b6b7fc6cd977bdd9b45f91b9837add85dc45d230ba6769fedd185c3" => :mojave
  end
end
