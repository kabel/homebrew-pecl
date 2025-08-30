require_relative "../lib/php_pecl_formula"

class PhpAT81Apcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.27.tgz"
  sha256 "1a2c37fcad2ae2a1aea779cd6ca9353d8b38d4e27dde2327c52ff3892dfadb3f"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "b7ed34bd4faf526178504ace4e30b7faeccfc9305b0408c16c48a1bf9a1f0831"
    sha256 cellar: :any_skip_relocation, ventura: "b3987305148c5a48a71fb4244735417416ef9bb16b66b8beec4ac0d4945bf1de"
  end

  deprecate! date: "2025-12-31", because: :unsupported
end
