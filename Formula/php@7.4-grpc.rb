require_relative "../lib/php_pecl_formula"

class PhpAT74Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.49.0.tgz"
  sha256 "dfcd402553a53aac4894b65c77e452c55c93d2c785114b23c152d0c624edf2ec"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "f16d7f2f09f2d10aeae36cf2e1ac6070be85f77ac12a7811e45d02073d7e39ce"
    sha256 cellar: :any_skip_relocation, big_sur:  "5a8de413ae9c9dd1505b9abea1868f7660d723d4abdcc28de9442a950e1afdb4"
    sha256 cellar: :any_skip_relocation, catalina: "60de15bf9985f9751a26aecaea349bb6cd9cc57f7aea13ce545d133615633c7d"
  end
end
