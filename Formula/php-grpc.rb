require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.25.0.tgz"
  sha256 "ca1367a32170c2f500c7a8a09db697444ec3f3513d16aff9b6a02efefb85a7a9"
  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "b7201b94ce7b456793ea16f3a29abae05aa9a3ea0edf40ea590783435ab54256" => :mojave
    sha256 "dda95747844b781bf98a5e53620a92807812c80e8027a1d1209ad1ebeffb2bd0" => :high_sierra
  end

end
