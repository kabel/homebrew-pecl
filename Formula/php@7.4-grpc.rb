require_relative "../lib/php_pecl_formula"

class PhpAT74Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.40.0.tgz"
  sha256 "ebfb1a2e9e8378ab65efb48b2e7d8ff23f5c5514b29f63d9558556ae6436ebf1"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "3cde1724cf61329a9cbbdfc8da7bd934cde128ad1145db78a9994cdf90e425cc"
    sha256 cellar: :any_skip_relocation, catalina: "b5857670bb75325264b8b7236925a4b38a473bd3077546f917edbf50fb94121d"
    sha256 cellar: :any_skip_relocation, mojave:   "c91678470246baee1c78beb8059e3ebff3e13d5d71472b2c950d709389eeff7e"
  end
end
