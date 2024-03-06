require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.62.0.tgz"
  sha256 "ceabf3c564cd3d61ca7a9a06ebdde777322e50701a454f1c5d8a5291afe59302"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "d1b629551e9625db793d5f6461bcbe17069461d70d38ad74263d763117350148"
    sha256 cellar: :any_skip_relocation, ventura:  "ee6f232b1854ae6de6aaaf31b7960db4337ddd8544cf9d7b6b0e52cd5d9297dc"
    sha256 cellar: :any_skip_relocation, monterey: "3cde02d143d711cdad5334d4c8ac1a9b6854d17386abf3774bf1c433e4fa08f2"
  end
end
