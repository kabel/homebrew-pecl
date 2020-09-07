require_relative "../lib/php_pecl_formula"

class PhpAT73Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.1.5.tgz"
  sha256 "e1f7dc74233052eb64d251c00e95889110de2406cdf5e71139050194da596d92"
  license "BSD-3-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "8218ff0165d6bf1c56cf46a37fd70967a683c501cb12559a21f86df7b1288faf" => :catalina
    sha256 "85d52e4f6329e014f03f779c0e3578fc12ee864681058687306d904756967fa9" => :mojave
  end
end
