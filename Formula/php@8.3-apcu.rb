require_relative "../lib/php_pecl_formula"

class PhpAT83Apcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.27.tgz"
  sha256 "1a2c37fcad2ae2a1aea779cd6ca9353d8b38d4e27dde2327c52ff3892dfadb3f"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "765d9696eacfda2a137ee135d65fc07a15731bc6c5e588c17d7b26ec7b5eac25"
    sha256 cellar: :any_skip_relocation, ventura: "909e76291874bdfa2cda764d7da140cde3aea176a380d4ab044972cd50244c6a"
  end

  deprecate! date: "2027-12-31", because: :unsupported
end
