require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.59.1.tgz"
  sha256 "d789aab7c791647907c3bc3af2bd6b6e97348d1b50eaa59826be61c4a3c3d3ee"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "bb1a106d6781814ec597fe0b66500bb76d960414aa77c122b49159e8e15e88b7"
    sha256 cellar: :any_skip_relocation, ventura:  "a440587a10f432ee25977164e7e159ef41cc71ca427a97ae02e98dd28f105144"
    sha256 cellar: :any_skip_relocation, monterey: "3f22dafa09c054ec94787cbb8aeeb60e289cd5bffc5616ba8ac0bf0c74b9a3ee"
  end
end
