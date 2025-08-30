require_relative "../lib/php_pecl_formula"

class PhpAT82Apcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.27.tgz"
  sha256 "1a2c37fcad2ae2a1aea779cd6ca9353d8b38d4e27dde2327c52ff3892dfadb3f"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "969544cfbca43ccc81f11aae94280b5f8656c56faf16100aa9fe81bc275c8e7a"
    sha256 cellar: :any_skip_relocation, ventura: "258b0c329a7f30567c436b2762ef1a7d58a848afc9e896518473e9b7615cac0a"
  end

  deprecate! date: "2026-12-31", because: :unsupported
end
