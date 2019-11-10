require_relative "../lib/php_pecl_formula"

class PhpAT71Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.25.0.tgz"
  sha256 "ca1367a32170c2f500c7a8a09db697444ec3f3513d16aff9b6a02efefb85a7a9"
  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "d0dcc2577afdab9e13b47da84822a76f491228cb82e91a2f7d719eb64749f2cf" => :mojave
    sha256 "215af20b10b6bde8078629ebf3c15962c822a361d6c5dda9e2330a585934731e" => :high_sierra
  end

end
