require_relative "../lib/php_pecl_formula"

class PhpAT80Mailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.1.3.tgz"
  sha256 "8659ca62dc9a4d7d15f07f97a0e2142cb58251c8e772cd36669ec740d2292471"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "b767bc78aade1258db82e3ae32227d9c45aa9832f0c2682c4f46b85df6fd86db"
    sha256 cellar: :any_skip_relocation, catalina: "9dbedb3aaede964e7800cb47d6bd7e363da3a56a99fb26323aa46242c47ade7a"
  end
end
