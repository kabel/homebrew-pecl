require_relative "../lib/php_pecl_formula"

class PhpAT81Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.23.3.tgz"
  sha256 "72575793a9a4e3c8cb52519fdab154c9a9434e34e2027b8761bb0cbcbe0345f1"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "6068b2b1eac7a428eeab529da498c68e942cffb02ab83760b672b3cfec59e6ba"
    sha256 cellar: :any_skip_relocation, monterey: "2ecbfea9528afacb9b475a969caf9f82bcf912934ee33e4be21b2791708a5c5c"
    sha256 cellar: :any_skip_relocation, big_sur:  "3428c4fc7ce019a1e5c8374eda51fd5a42ffa970af66b2cf3a3454afd6315092"
  end
end
