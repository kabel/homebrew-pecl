require_relative "../lib/php_pecl_formula"

class PhpAT82Mailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.1.8.tgz"
  sha256 "59beab4ef851770c495ba7a0726ab40e098135469a11d9c8e665b089c96efc2f"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "e87427d1f7e5bbd60f67250c9c3c2e3bbbc8df76e4c49a67929503d681709cfd"
    sha256 cellar: :any_skip_relocation, ventura:  "3c5bef2d6e921eeedd82a8fcf4437bc1df48bfaab64beae30ed38a6871331d04"
    sha256 cellar: :any_skip_relocation, monterey: "ed7f2528f496d3ff30bd684e87af6727f7326140e9bac941e443512405641d36"
  end

  deprecate! date: "2026-12-31", because: :unsupported
end
