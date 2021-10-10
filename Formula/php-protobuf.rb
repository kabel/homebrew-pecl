require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.18.1.tgz"
  sha256 "55ab4405d2f5605ad6f78d7a611c32cf8341f84fdbedce7f5537ee0d6bbd6232"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "cf33e0824ed28725a681c4242431ec1c37f5b9d0c4f10d38842b460b00715fcb"
    sha256 cellar: :any_skip_relocation, catalina: "5e7b5142528d53b44eb17209a2afe612a32998939bd21ecb5d3c7cebf9f27987"
    sha256 cellar: :any_skip_relocation, mojave:   "2fd2cf55395ac23e7e8feb7582198e66613fe36562c847ba1a049fee92391b3c"
  end
end
