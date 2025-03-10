require_relative "../lib/php_pecl_formula"

class PhpAT81Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.70.0.tgz"
  sha256 "11336d7bc4465148db506348006dd5559ce478eee4bf1b080bb31b89de6974b7"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "9d8917fcfc0ab1c6c89c27ab0d87cf3ea5e969b71efc41a1351c48304ca063ca"
    sha256 cellar: :any_skip_relocation, ventura: "c63fc2bc9ceeb4786b12ade3c908a0e6dbc7396aafbd696848ea749f07b4443f"
  end

  deprecate! date: "2025-12-31", because: :unsupported
end
