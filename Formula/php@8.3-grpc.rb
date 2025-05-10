require_relative "../lib/php_pecl_formula"

class PhpAT83Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.72.0.tgz"
  sha256 "715fe230c0b185968e92f8f752d61a878f9eb5346873848e47ff65d0af6947dc"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "dac6e10e8214b5384b3f7319cb7af7df157f9e1d602d7675be681defddeeb14e"
    sha256 cellar: :any_skip_relocation, ventura: "b8d52eb33b2218364db2f0e364dadee162f1aa7b4c9c1dafa06dafbcb908ff45"
  end

  deprecate! date: "2027-12-31", because: :unsupported
end
