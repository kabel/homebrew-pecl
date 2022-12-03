require_relative "../lib/php_pecl_formula"

class PhpAT74Mailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.1.4.tgz"
  sha256 "1474921b32c7eef825144e2be19b1e9d47505ad409729833fd50c25eacdf9577"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "fa4878324fc0cf86ae7151c408e894033b19b1903f23bec43cb0fc544102450f"
    sha256 cellar: :any_skip_relocation, monterey: "b9a13ac0c575219bb8c1befb61a82e4e67f69eba6410dc00e2a11df70196e9d9"
    sha256 cellar: :any_skip_relocation, big_sur:  "a0ef2c12cd28a1076d0e70e480bd876b9bab92cd8c40a971fde4f42fd286ebd1"
    sha256 cellar: :any_skip_relocation, catalina: "9d679ce9b298ab37dabebf45bf14148fd3b3c7c67199cf65cfb047e291b31a12"
  end

  disable! date: "2022-11-28", because: :versioned_formula
end
