require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.41.0.tgz"
  sha256 "62d7320d7e26db29254bbc5770b70ba1f902952b9c6f89d34461019e7f8086a2"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "446430c9777222d458a7e497df80af28b28cbb5a7ce5dae2b6834789edfa0ceb"
    sha256 cellar: :any_skip_relocation, catalina: "03a3aab2616e3fbf62ab926a9a5f4fd683137deb2bef00da8e3b23086718221a"
    sha256 cellar: :any_skip_relocation, mojave:   "6ec039896bacaf2f578167bc3cc2fceabfee684cdf6e1bbfeb96e6d666597f07"
  end
end
