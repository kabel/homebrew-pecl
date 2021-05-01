require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.37.1.tgz"
  sha256 "2abefeea06491ac76862bacf16e78732ffbf4ffb0b0e4f74263d4f1a5c7745d6"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "82550096111017c246e464d70cbc8a3658320910d01b5bc05dd500c709cd5adf"
    sha256 cellar: :any_skip_relocation, catalina: "2fe70df120f6b73403272c2b775e949a541b6d66fa1c8577f6c15cb8d5f85506"
    sha256 cellar: :any_skip_relocation, mojave:   "03bbfa06210e3482e7a06712248f29324e824226be503d74e7636a79d716433b"
  end
end
