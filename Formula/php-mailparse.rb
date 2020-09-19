require_relative "../lib/php_pecl_formula"

class PhpMailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.1.1.tgz"
  sha256 "c70f2650f81f7e234e5e2c8b079f3db04f38c269cf906c7846242fe9df92ce0a"
  license "PHP-3.01"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "279072173d2decc3dcb9be9f3c7a0fa8bb92c6739630b08ebe0013f21d2717b1" => :catalina
    sha256 "e11bc639f7d0e88a8386747e12992746f3885cd8d09c523e3b37819be7f30d69" => :mojave
  end
end
