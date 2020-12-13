require_relative "../lib/php_pecl_formula"

class PhpAT73Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.34.0.tgz"
  sha256 "70a0f34ac30608e52d83bba9639b2cf6878942813f4aee6d6e842e689ea27485"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "1c108db443997760f00c9c6fe254edee343e814f6ac03d4b03a97c8369f60290" => :catalina
    sha256 "96005d18fe6f6aea2a27871f0d099c3d05454d7af85b5ebdf24caea77677d976" => :mojave
  end
end
