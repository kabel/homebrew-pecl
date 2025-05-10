require_relative "../lib/php_pecl_formula"

class PhpAT83Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.72.0.tgz"
  sha256 "715fe230c0b185968e92f8f752d61a878f9eb5346873848e47ff65d0af6947dc"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "aa10141b253b534c1c24216115c82859ed53a210a0aaea32751d602c3e4cf456"
    sha256 cellar: :any_skip_relocation, ventura: "aa5a06236a1dc61f8e6e4e11f4e45215d92a02524b9b1e763eee3bec2955d1aa"
  end

  deprecate! date: "2027-12-31", because: :unsupported
end
