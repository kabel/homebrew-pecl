require_relative "../lib/php_pecl_formula"

class PhpAT80Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.47.0.tgz"
  sha256 "76e82b0786962ca1514ef43a96102b53156a2f114261baa29ef3383ee659cd6b"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "4e55ca3131b1730e37a76719cc6579dac782c2c628f9fbc5853df9449c48ada1"
    sha256 cellar: :any_skip_relocation, big_sur:  "536eb31f50b7587503459f3e7f230517117911184f3f58d6bb0b437785187916"
    sha256 cellar: :any_skip_relocation, catalina: "514d3121636d4770f9bb3aa6a9393cc62573b21992239ac25b65605d98c3f020"
  end
end
