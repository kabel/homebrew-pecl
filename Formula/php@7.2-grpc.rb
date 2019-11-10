require_relative "../lib/php_pecl_formula"

class PhpAT72Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.25.0.tgz"
  sha256 "ca1367a32170c2f500c7a8a09db697444ec3f3513d16aff9b6a02efefb85a7a9"
  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "e53928c56899e24a85f85c520afb9f080ce5d7e81c48a3773cf347b240048251" => :mojave
    sha256 "b367d86036ad37151721bada331affb053988ded48f8b1be811340c08971b92d" => :high_sierra
  end

end
