require_relative "../lib/php_pecl_formula"

class PhpAT81Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.72.0.tgz"
  sha256 "715fe230c0b185968e92f8f752d61a878f9eb5346873848e47ff65d0af6947dc"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "567f00edddec7e19da0d4daff369e82ac6712cf597ea2c576f071815377f9dec"
    sha256 cellar: :any_skip_relocation, ventura: "e4ac7e042ac16677600307f24f9345c678f740c2420b4a6f944eda66a644d81c"
  end

  deprecate! date: "2025-12-31", because: :unsupported
end
