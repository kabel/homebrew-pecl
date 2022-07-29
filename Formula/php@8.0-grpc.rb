require_relative "../lib/php_pecl_formula"

class PhpAT80Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.48.0.tgz"
  sha256 "4b4ccb491355f938d28e63a476df92d5109263ea63ffee1e0249616461e26963"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "707e473d85cb7b2a0fc1e003467885b3abda84e4c9152adeddd06243fb8a82f5"
    sha256 cellar: :any_skip_relocation, big_sur:  "59fd93e5180cc6d16a291b35722241bc499be2ecf8238282b18c4403bf9a411b"
    sha256 cellar: :any_skip_relocation, catalina: "7e1ea00ba142af7b429051eb1765e5f695850fbbc08e8960c351c08f205be488"
  end
end
