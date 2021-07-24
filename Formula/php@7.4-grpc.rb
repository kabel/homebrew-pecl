require_relative "../lib/php_pecl_formula"

class PhpAT74Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.39.0.tgz"
  sha256 "912bd2d2bd9d5b6e2ed861a79316a14811aac6f8e1a93c82dfc993430639d004"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "52d9c014811c45ef1600cfd4180aa40f88287e702f11bf9dfb2f79361df52fd7"
    sha256 cellar: :any_skip_relocation, catalina: "a26fcd501f7c8d5cf2dd02007fe6050d37da620d49a77528f15a62319e2f7cfd"
    sha256 cellar: :any_skip_relocation, mojave:   "3c21dd3b91b1bab280da35b18166dc46a3129d1814954ab905e7bbc4563057ed"
  end
end
