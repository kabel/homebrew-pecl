require_relative "../lib/php_pecl_formula"

class PhpAT73Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.19.1.tgz"
  sha256 "9003cd3e7bdb0ab9862133371e3a6c9fad9301257c78d0a2cc537cfb5f88e9b6"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "1b55395317fd9dd9815ebbbf92bfd194c743d692a89f03ce3ba685aa6a48eae5"
    sha256 cellar: :any_skip_relocation, catalina: "27674afbc92c71db97811b0bdc3a12b433de07bd6bca0a1916904b5f59a50672"
  end

  disable! date: "2021-12-06", because: :versioned_formula
end
