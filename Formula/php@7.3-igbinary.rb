require_relative "../lib/php_pecl_formula"

class PhpAT73Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.1.6.tgz"
  sha256 "b9bf87dc4d861c6769ae2a13b085395e2741505c629895ec4559781a5031fdea"
  license "BSD-3-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "1df63cfe0de6907da8bca4c87b72da95bcc464bc0a7b6d3f9bc33e8938b3244a" => :catalina
    sha256 "26aedc388a0c6267e418e8ed150dbfe0879b296d4bb2e10516c4b13675d41694" => :mojave
  end
end
