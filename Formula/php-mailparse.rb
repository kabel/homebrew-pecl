require_relative "../lib/php_pecl_formula"

class PhpMailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.1.8.tgz"
  sha256 "59beab4ef851770c495ba7a0726ab40e098135469a11d9c8e665b089c96efc2f"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "d6e7548f961d96d664467d17911958c9340e8d18a3eae229a56f12381c1102a8"
    sha256 cellar: :any_skip_relocation, ventura: "46d15ea39a0f6c5bf891080fb7f42678cf0b206e17796fafc78f15ba13bdd9a0"
  end
end
