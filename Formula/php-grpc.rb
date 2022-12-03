require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.51.1.tgz"
  sha256 "a8a79bf27bceeb8088c2a3a5a76c1146bbbd3e8d7a8a13e44ddbcfd715213ba9"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "8e75c230ec7daca69c1b0fb42d6e958512651c8e7be735d3771c04ed43ad7074"
    sha256 cellar: :any_skip_relocation, monterey: "8b433036ada09623b32cc42149af25c8fafd9fd2774dfe3a48f05c85ae07e411"
    sha256 cellar: :any_skip_relocation, big_sur:  "fd474c5bf16d6e79928f35b832c3d4110df5fe60907e76349649196bd17607cb"
    sha256 cellar: :any_skip_relocation, catalina: "39db7b08002121d0b568a51271e1f93a5053ebdaa6165a81cad32208f41534e9"
  end
end
