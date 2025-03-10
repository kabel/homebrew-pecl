require_relative "../lib/php_pecl_formula"

class PhpAT81Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.70.0.tgz"
  sha256 "11336d7bc4465148db506348006dd5559ce478eee4bf1b080bb31b89de6974b7"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "cb075d603f42921ccb9003fa216d60fdcb367e48172ae8f9bff147a67c8e5ffb"
    sha256 cellar: :any_skip_relocation, ventura: "e8ac3975b567c1667c31d7960af78dc9366d2c7a192173fc4a57e298cdccee4a"
  end

  deprecate! date: "2025-12-31", because: :unsupported
end
