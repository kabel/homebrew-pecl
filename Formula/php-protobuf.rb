require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.17.2.tgz"
  sha256 "e553e85ee153f9a4409ad972b7d217254d4cedd87b54c3fa9f3022aa89bc9644"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "974ccbc8563c22bf02f4958e12e40542b508b384581e45a80a0261cfee01d57d"
    sha256 cellar: :any_skip_relocation, catalina: "0539f79e77637604c79934fe1535be1c28c125fadfbd0d970a61b0ed9878afd4"
    sha256 cellar: :any_skip_relocation, mojave:   "70aa89bc00b738647560645ab1e7b23327ed60117c85ccff8120f88bd5941d4b"
  end
end
