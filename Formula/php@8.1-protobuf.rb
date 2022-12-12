require_relative "../lib/php_pecl_formula"

class PhpAT81Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.21.11.tgz"
  sha256 "62d4e4e09362def55d825fa9ef2735e3ed9f8ab456ef6229160a43f988f8e8b5"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "f2d50b1abdda71fe8c1903b20047f2cc1fd2bf0687dabf4a3de7984559902cb2"
    sha256 cellar: :any_skip_relocation, monterey: "27418c6e4482b122dd021c490cd5d74458e0c3dc85e77e86165cd361ca64ec14"
    sha256 cellar: :any_skip_relocation, big_sur:  "dd99700caf0d107c6af34f26fb12e6d24ddbcbf09b72769827f19c4cac2f26dc"
  end
end
