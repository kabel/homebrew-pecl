require_relative "../lib/php_pecl_formula"

class PhpMailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.1.4.tgz"
  sha256 "1474921b32c7eef825144e2be19b1e9d47505ad409729833fd50c25eacdf9577"
  revision 1
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "ff1e448dcd7a134923011f1f5fae5da5fa6cc9483841d7333ebb72b41b34bb54"
    sha256 cellar: :any_skip_relocation, monterey: "8215c354ab7af86ce4914a394990fa2866edf48787fad8bfcc39896426005777"
    sha256 cellar: :any_skip_relocation, big_sur:  "fe44c56e497456e32e4ebf41b437c0725be33f959c55869a85a5eeb868532a58"
  end
end
