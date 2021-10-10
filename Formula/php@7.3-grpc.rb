require_relative "../lib/php_pecl_formula"

class PhpAT73Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.41.0.tgz"
  sha256 "62d7320d7e26db29254bbc5770b70ba1f902952b9c6f89d34461019e7f8086a2"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "9ee54f6a0b02feb6a2f7610985bb254979039198f311baa1977f6100b4ec1759"
    sha256 cellar: :any_skip_relocation, catalina: "04a88ee4e4778a3fe313e6eb116a4a06cf5b647e19b1941595dace96c28321fc"
    sha256 cellar: :any_skip_relocation, mojave:   "dca7b0eef29581350459c89dca39b8b31393a9d1833c4ccdca1623e2f98e27ff"
  end
end
