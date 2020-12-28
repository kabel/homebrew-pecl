require_relative "../lib/php_pecl_formula"

class PhpAT74Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.1.tgz"
  sha256 "601620cffd3b3e559620099c0569b8c4247f029ec18adc0206bf26f8e35753db"
  license "BSD-3-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "88d2024f2b5125a8cd2ccf7d595bd93374b4abdeb9cb298cf10bb06b5ded5706" => :catalina
    sha256 "486346bd06468479ce74a2020f823cbddf9c0a86bf2970377daf5e08cf5fabdf" => :mojave
  end
end
