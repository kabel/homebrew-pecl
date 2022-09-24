require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.49.0.tgz"
  sha256 "dfcd402553a53aac4894b65c77e452c55c93d2c785114b23c152d0c624edf2ec"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "37d1ed9330cf7a13aa1c926868cec5af3970006c075ce0a613287339a01bd0c7"
    sha256 cellar: :any_skip_relocation, big_sur:  "49062956dd75060ca7d708b16710607fe5defb3186ce75317faa09f47cdf6de8"
    sha256 cellar: :any_skip_relocation, catalina: "448bb3a131509870a6988a6be67a37f851a4fea0304f9f674c486544e2630ce8"
  end
end
