require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.49.0.tgz"
  sha256 "dfcd402553a53aac4894b65c77e452c55c93d2c785114b23c152d0c624edf2ec"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "8fe59747c9d44ec1909ee9ccef220fccdde4e989539f347ea11495e9a49cbc79"
    sha256 cellar: :any_skip_relocation, big_sur:  "f42141a417c75450477b91d3aa4741e42158f204034bedae0b04b80e258712e6"
    sha256 cellar: :any_skip_relocation, catalina: "337751ff26f3f6f7933bb28b632ab4eabb25e528a5487b2dbc3538307e5c6acd"
  end
end
