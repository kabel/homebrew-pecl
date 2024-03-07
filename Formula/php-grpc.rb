require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.62.0.tgz"
  sha256 "ceabf3c564cd3d61ca7a9a06ebdde777322e50701a454f1c5d8a5291afe59302"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "58b33b9c56c3626bde1abf9c7be86554aef626f133a3ffeeaadeb872eb7b9768"
    sha256 cellar: :any_skip_relocation, ventura:  "634ac4586fb3e547823deaa65c84a2465621aebd43a76d8d3da592bb11abb88c"
    sha256 cellar: :any_skip_relocation, monterey: "4e841b9b58a5f9de8e8b68621586d5004166956132b0fcd44f50ed1f9e106f12"
  end
end
