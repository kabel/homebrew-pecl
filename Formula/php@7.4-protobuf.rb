require_relative "../lib/php_pecl_formula"

class PhpAT74Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.19.1.tgz"
  sha256 "9003cd3e7bdb0ab9862133371e3a6c9fad9301257c78d0a2cc537cfb5f88e9b6"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "1bc2ea181ef37094793c01c5ad86db29eeedf4effb7488fbc404f11e8e171404"
    sha256 cellar: :any_skip_relocation, catalina: "2aa13ba1933eebab2a2e98e33bc005d4174fa820a332ee2536b04ec66608e71a"
  end
end
