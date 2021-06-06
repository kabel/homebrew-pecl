require_relative "../lib/php_pecl_formula"

class PhpAT73Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.38.0.tgz"
  sha256 "4bec8f981b7b074ed78bc42ef229dcfb6c5fe3782f29bc4980b4da00866d47f9"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "6e7eb4dff521a36d1487221a4d46fb71363c8030302f050f6505f0580aac99ee"
    sha256 cellar: :any_skip_relocation, catalina: "9db76d919493e334ad5cf4af2028775872d3d233c04c03be1d696a750dfcd37a"
    sha256 cellar: :any_skip_relocation, mojave:   "dc616ad1c34e0d6f3aded85a793c37dc387c78e24e6dcf0b66d62f34d19bd486"
  end
end
