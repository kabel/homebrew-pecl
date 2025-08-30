require_relative "../lib/php_pecl_formula"

class PhpAT82Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.74.0.tgz"
  sha256 "972ce8a989f2c15a951444950c1febe84eb88e59aeaca29d96e005fe55df1fc3"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "e24050a02b5651eeb4fbf14918b5ea64735252355ed2c4f63f427b41c4c3dbb8"
    sha256 cellar: :any_skip_relocation, ventura: "d3e81765688e5f8bf7c073f9719b61e0a41c3483db8e8945b48320cd1c75c83f"
  end

  deprecate! date: "2026-12-31", because: :unsupported
end
