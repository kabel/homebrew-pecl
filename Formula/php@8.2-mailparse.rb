require_relative "../lib/php_pecl_formula"

class PhpAT82Mailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.1.8.tgz"
  sha256 "59beab4ef851770c495ba7a0726ab40e098135469a11d9c8e665b089c96efc2f"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "84944ed517a22dcff8769360adaf22bddaa196ac4aa35f658d65dc179c46d034"
    sha256 cellar: :any_skip_relocation, ventura: "2a820ebf4f2e1f33edbe9468278f082ccfe36fa6bba7c999977beec1bd3c1c84"
  end

  deprecate! date: "2026-12-31", because: :unsupported
end
