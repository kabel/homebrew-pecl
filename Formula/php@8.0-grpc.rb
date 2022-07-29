require_relative "../lib/php_pecl_formula"

class PhpAT80Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.48.0.tgz"
  sha256 "4b4ccb491355f938d28e63a476df92d5109263ea63ffee1e0249616461e26963"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "9e52ee944fef7438a41a382efc4fc315d144ad392bb8c6cbc7dab4872421b34a"
    sha256 cellar: :any_skip_relocation, big_sur:  "22d232afa05ffb13130e91e3519e437387bfecf7c7b571b7d83dc69545e3f922"
    sha256 cellar: :any_skip_relocation, catalina: "1983f055081dccb830b69981d49398596d7ceac343ffc05a923be09fc35aec16"
  end
end
