require_relative "../lib/php_pecl_formula"

class PhpAT73Mailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.1.1.tgz"
  sha256 "c70f2650f81f7e234e5e2c8b079f3db04f38c269cf906c7846242fe9df92ce0a"
  license "PHP-3.01"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "4d60080c566fc5c7892f783fc985ef1ecfd6ed53aca9dc138a613c1a5644eaf3" => :catalina
    sha256 "ecd0356c98700fcbe6d37dee3d34a60b68e05c4936563fc00f76f3caade015cd" => :mojave
  end
end
