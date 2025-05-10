require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.72.0.tgz"
  sha256 "715fe230c0b185968e92f8f752d61a878f9eb5346873848e47ff65d0af6947dc"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "5cca549828f474e96fc8aa0671c9db30acc88a6c759aac9270b36f161b291e64"
    sha256 cellar: :any_skip_relocation, ventura: "4f374a52517122ea4a4ce1a745236814723148018f59f345bfc265b789b9e7be"
  end
end
