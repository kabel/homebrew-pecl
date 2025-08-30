require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.74.0.tgz"
  sha256 "972ce8a989f2c15a951444950c1febe84eb88e59aeaca29d96e005fe55df1fc3"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "403577460f5fef1cd7ead36b52c7dc75ac781b74b3a802f7845dc2c7f8afd864"
    sha256 cellar: :any_skip_relocation, ventura: "05e531dd0c870e875fceae921aa768cff98874d8dfbf77a52bce5945cba75eb1"
  end
end
