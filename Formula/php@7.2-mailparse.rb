require_relative "../lib/php_pecl_formula"

class PhpAT72Mailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.1.1.tgz"
  sha256 "c70f2650f81f7e234e5e2c8b079f3db04f38c269cf906c7846242fe9df92ce0a"
  license "PHP-3.01"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "2adc249aacbafeddcb8d107de5eb004f342c78c6d2577bd8f08614c255ff3405" => :catalina
    sha256 "62dbe5b10202bb4ce3b3b9bf8079e3a7ecd8362e70f8de3592fc1cf463af8eb9" => :mojave
  end
end
