require_relative "../lib/php_pecl_formula"

class PhpAT81Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.68.0.tgz"
  sha256 "4e022e052d5b7997efd42f3b67f1175dbbb772cfd435570852febc0f569065bb"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "cb075d603f42921ccb9003fa216d60fdcb367e48172ae8f9bff147a67c8e5ffb"
    sha256 cellar: :any_skip_relocation, ventura: "e8ac3975b567c1667c31d7960af78dc9366d2c7a192173fc4a57e298cdccee4a"
  end

  deprecate! date: "2025-12-31", because: :unsupported
end
