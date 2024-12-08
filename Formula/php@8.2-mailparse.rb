require_relative "../lib/php_pecl_formula"

class PhpAT82Mailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.1.6.tgz"
  sha256 "a69f1605583eabdb59c2cd4c17334b3267398a1d47e1fd7edb92d8bef9dee008"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "e87427d1f7e5bbd60f67250c9c3c2e3bbbc8df76e4c49a67929503d681709cfd"
    sha256 cellar: :any_skip_relocation, ventura:  "3c5bef2d6e921eeedd82a8fcf4437bc1df48bfaab64beae30ed38a6871331d04"
    sha256 cellar: :any_skip_relocation, monterey: "ed7f2528f496d3ff30bd684e87af6727f7326140e9bac941e443512405641d36"
  end

  deprecate! date: "2026-12-31", because: :unsupported
end
