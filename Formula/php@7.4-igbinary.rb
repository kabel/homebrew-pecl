require_relative "../lib/php_pecl_formula"

class PhpAT74Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.1.6.tgz"
  sha256 "b9bf87dc4d861c6769ae2a13b085395e2741505c629895ec4559781a5031fdea"
  license "BSD-3-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "88d2024f2b5125a8cd2ccf7d595bd93374b4abdeb9cb298cf10bb06b5ded5706" => :catalina
    sha256 "486346bd06468479ce74a2020f823cbddf9c0a86bf2970377daf5e08cf5fabdf" => :mojave
  end
end
