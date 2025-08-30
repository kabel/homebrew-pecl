require_relative "../lib/php_pecl_formula"

class PhpAT83Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.74.0.tgz"
  sha256 "972ce8a989f2c15a951444950c1febe84eb88e59aeaca29d96e005fe55df1fc3"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "1e6f24f3d39c4b35fa98979573ce719a14f8c269d8ef348a009435077cb1c5f0"
    sha256 cellar: :any_skip_relocation, ventura: "d511af28dd16c3a724a7b291da4f761a380d9a174b48d89be1604103bf663aaf"
  end

  deprecate! date: "2027-12-31", because: :unsupported
end
