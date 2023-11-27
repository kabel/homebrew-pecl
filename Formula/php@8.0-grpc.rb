require_relative "../lib/php_pecl_formula"

class PhpAT80Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.59.1.tgz"
  sha256 "d789aab7c791647907c3bc3af2bd6b6e97348d1b50eaa59826be61c4a3c3d3ee"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "8ffb8a115813f42bbf987f9a3808e4f10e3ac2890c158489d0b1e04aba714365"
    sha256 cellar: :any_skip_relocation, monterey: "bb7cb031cad43ed1ea8e655b240548e8a6644b1010aea40d9f25b2fe7ab13515"
    sha256 cellar: :any_skip_relocation, big_sur:  "4c9102e246578f862d81d957ea7a479b511c5c5a9fe7bf1320d049c6e6f61050"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula
end
