require_relative "../lib/php_pecl_formula"

class PhpAT74Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.41.0.tgz"
  sha256 "62d7320d7e26db29254bbc5770b70ba1f902952b9c6f89d34461019e7f8086a2"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "58c3586eb271549256ba6f97a710a7e9a3843c6f5812d154949a4c0b0b16cb18"
    sha256 cellar: :any_skip_relocation, catalina: "f2f71e9d2e1bff374c99d803b4897e0d74b75f8376fb55b1b8846b48fbf5d025"
    sha256 cellar: :any_skip_relocation, mojave:   "bb05f13d0867a50c13fa5f8a24ee356eac26245b3279f3948daf12ec038dbc00"
  end
end
