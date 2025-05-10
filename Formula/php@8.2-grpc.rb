require_relative "../lib/php_pecl_formula"

class PhpAT82Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.72.0.tgz"
  sha256 "715fe230c0b185968e92f8f752d61a878f9eb5346873848e47ff65d0af6947dc"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "1336b3fb086038832da5735bc529a9e6c7297d473c383ee3eeb260362af656ab"
    sha256 cellar: :any_skip_relocation, ventura: "6918652a5441656d3f35c5533b5566cdc814216e73f9ff0925092b163859754c"
  end

  deprecate! date: "2026-12-31", because: :unsupported
end
