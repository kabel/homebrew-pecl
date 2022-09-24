require_relative "../lib/php_pecl_formula"

class PhpAT80Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.49.0.tgz"
  sha256 "dfcd402553a53aac4894b65c77e452c55c93d2c785114b23c152d0c624edf2ec"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "a60dca12356da43a40cb930bb0d81c594a4abb8c8e27cb257d4cfceee2b4a881"
    sha256 cellar: :any_skip_relocation, big_sur:  "70e5ec9acfa496e725e79b7183de78b06b828970237352bc28c939f652e32da8"
    sha256 cellar: :any_skip_relocation, catalina: "3aab9a7e4d142c0338cbece1e6b3a858bdd811751550b84b65296873e72f3b34"
  end
end
