require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.74.0.tgz"
  sha256 "972ce8a989f2c15a951444950c1febe84eb88e59aeaca29d96e005fe55df1fc3"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "5cca549828f474e96fc8aa0671c9db30acc88a6c759aac9270b36f161b291e64"
    sha256 cellar: :any_skip_relocation, ventura: "4f374a52517122ea4a4ce1a745236814723148018f59f345bfc265b789b9e7be"
  end
end
