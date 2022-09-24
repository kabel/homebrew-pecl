require_relative "../lib/php_pecl_formula"

class PhpAT74Apcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.22.tgz"
  sha256 "010a0d8fd112e1ed7a52a356191da3696a6b76319423f7b0dfdeaeeafcb41a1e"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "f5510af98e8ea412b32f60d2cc76d3c4d1509afbbf64099d94c0aead65f5b297"
    sha256 cellar: :any_skip_relocation, big_sur:  "dfcb34c148e8eb05e83c9438d83cdc0bdaf46ef5855100c1066c3c9cf65167d7"
    sha256 cellar: :any_skip_relocation, catalina: "08d390bc02c98a1bd1435b082ad3d00783a662c6a18129bae8643281f5606028"
  end
end
