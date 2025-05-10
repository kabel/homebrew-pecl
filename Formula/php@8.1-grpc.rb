require_relative "../lib/php_pecl_formula"

class PhpAT81Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.72.0.tgz"
  sha256 "715fe230c0b185968e92f8f752d61a878f9eb5346873848e47ff65d0af6947dc"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "9d8917fcfc0ab1c6c89c27ab0d87cf3ea5e969b71efc41a1351c48304ca063ca"
    sha256 cellar: :any_skip_relocation, ventura: "c63fc2bc9ceeb4786b12ade3c908a0e6dbc7396aafbd696848ea749f07b4443f"
  end

  deprecate! date: "2025-12-31", because: :unsupported
end
