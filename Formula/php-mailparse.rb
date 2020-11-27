require_relative "../lib/php_pecl_formula"

class PhpMailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.1.1.tgz"
  sha256 "c70f2650f81f7e234e5e2c8b079f3db04f38c269cf906c7846242fe9df92ce0a"
  revision 1
  license "PHP-3.01"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "c2bfa6412a7a2a47bd62f2c20e278514a7eb033e068a544630fbc1914c487eb5" => :catalina
    sha256 "c5ded2e763dff5e6a6f97e0010a982c4701002f8416e683dfba7f9082568d4d0" => :mojave
  end
end
