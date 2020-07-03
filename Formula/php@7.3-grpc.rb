require_relative "../lib/php_pecl_formula"

class PhpAT73Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.30.0.tgz"
  sha256 "7201db290ce5083deb1e74076432a648deaca80224c5e96398bce61cb7c76a67"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "423965da40189004e98cf1867eb5dd09566fd583ba98ceb96fd839490e42784f" => :catalina
    sha256 "feb8ef18ef2e71af0e57bcf1f8fc411f90a8a1a4a7651c5ea268e482681730d9" => :mojave
  end
end
