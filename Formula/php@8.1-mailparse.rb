require_relative "../lib/php_pecl_formula"

class PhpAT81Mailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.1.6.tgz"
  sha256 "a69f1605583eabdb59c2cd4c17334b3267398a1d47e1fd7edb92d8bef9dee008"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "ba378882bacc3ace1adae472d7846c43ab62260621b128ae755065505594b5e8"
    sha256 cellar: :any_skip_relocation, monterey: "c70eb57635cf4bc80ae2228d167aa75fc85af3b826d6758f0f5bef47f0894fb2"
    sha256 cellar: :any_skip_relocation, big_sur:  "49c711e726e03e7783a6ae0fa5e7cad1faaae154fed09202491bc64c852f6156"
  end

  deprecate! date: "2024-11-25", because: :unsupported
end
