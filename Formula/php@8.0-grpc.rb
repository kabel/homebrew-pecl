require_relative "../lib/php_pecl_formula"

class PhpAT80Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.41.0.tgz"
  sha256 "62d7320d7e26db29254bbc5770b70ba1f902952b9c6f89d34461019e7f8086a2"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "90facf13f40da1f5cdef91faee3c6ab878cd0c83bb6c9c5307e0eebd5e5865ae"
    sha256 cellar: :any_skip_relocation, catalina: "bb19335f1d6a1de0826b885b0fc0c6b302b2204a250cd1a6f19680464d791b31"
  end
end
