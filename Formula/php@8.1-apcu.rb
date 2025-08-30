require_relative "../lib/php_pecl_formula"

class PhpAT81Apcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.27.tgz"
  sha256 "1a2c37fcad2ae2a1aea779cd6ca9353d8b38d4e27dde2327c52ff3892dfadb3f"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "7d5e7da2da9abd30aeb22890b6841f079e1e6dde9f3868069c935a6ed4a4585d"
    sha256 cellar: :any_skip_relocation, ventura: "108299bb2d09f731d18dedf141b3dd911e7d145c2ed21096e44393aab63c0425"
  end

  deprecate! date: "2025-12-31", because: :unsupported
end
