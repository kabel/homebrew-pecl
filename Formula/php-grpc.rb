require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.30.0.tgz"
  sha256 "7201db290ce5083deb1e74076432a648deaca80224c5e96398bce61cb7c76a67"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "615942eec980e5ed0db758aec9ed1d29d0a3d22ee08186aebb8af6a9ab05ebfb" => :catalina
    sha256 "66c7dafceb4f554b0e6208ccfaa571169f668dbfcdb94c6c07fde1960bf24863" => :mojave
  end
end
