require_relative "../lib/php_pecl_formula"

class PhpAT82Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.74.0.tgz"
  sha256 "972ce8a989f2c15a951444950c1febe84eb88e59aeaca29d96e005fe55df1fc3"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "90297809a60f5783aaa44f835b1385072d1c742c3d7fa0c15be474ecad704428"
    sha256 cellar: :any_skip_relocation, ventura: "6413ee0bc3e6b8e91d1c7ffe418f32fdf4d582fda4d7ba7ff0a10aa21374e995"
  end

  deprecate! date: "2026-12-31", because: :unsupported
end
