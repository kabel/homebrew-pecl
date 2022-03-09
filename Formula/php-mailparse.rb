require_relative "../lib/php_pecl_formula"

class PhpMailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.1.3.tgz"
  sha256 "8659ca62dc9a4d7d15f07f97a0e2142cb58251c8e772cd36669ec740d2292471"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "ab93990415fad467737e635e6b22e0d3660c03718f0b26a8b242e0b5b577d55c"
    sha256 cellar: :any_skip_relocation, catalina: "eecadfd0b36b73504d727b1ed94e55892fc50de18100ce77232041b26bcf81f0"
  end
end
