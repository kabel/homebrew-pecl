require_relative "../lib/php_pecl_formula"

class PhpAT73Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.1.5.tgz"
  sha256 "e1f7dc74233052eb64d251c00e95889110de2406cdf5e71139050194da596d92"
  license "BSD-3-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "1df63cfe0de6907da8bca4c87b72da95bcc464bc0a7b6d3f9bc33e8938b3244a" => :catalina
    sha256 "26aedc388a0c6267e418e8ed150dbfe0879b296d4bb2e10516c4b13675d41694" => :mojave
  end
end
