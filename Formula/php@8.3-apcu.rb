require_relative "../lib/php_pecl_formula"

class PhpAT83Apcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.27.tgz"
  sha256 "1a2c37fcad2ae2a1aea779cd6ca9353d8b38d4e27dde2327c52ff3892dfadb3f"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "99897c43f576eff6cf7c894f1df7f94fbd9dadd15675ec756723430f470c8c9f"
    sha256 cellar: :any_skip_relocation, ventura: "3807c87e257f1f44eadfffd639dabd23b7df477b6443ac8cf814eb3c2ef786a5"
  end

  deprecate! date: "2027-12-31", because: :unsupported
end
