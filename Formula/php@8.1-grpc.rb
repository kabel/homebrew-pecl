require_relative "../lib/php_pecl_formula"

class PhpAT81Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.74.0.tgz"
  sha256 "972ce8a989f2c15a951444950c1febe84eb88e59aeaca29d96e005fe55df1fc3"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "567f00edddec7e19da0d4daff369e82ac6712cf597ea2c576f071815377f9dec"
    sha256 cellar: :any_skip_relocation, ventura: "e4ac7e042ac16677600307f24f9345c678f740c2420b4a6f944eda66a644d81c"
  end

  deprecate! date: "2025-12-31", because: :unsupported
end
