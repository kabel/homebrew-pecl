require_relative "../lib/php_pecl_formula"

class PhpAT72Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.1.5.tgz"
  sha256 "e1f7dc74233052eb64d251c00e95889110de2406cdf5e71139050194da596d92"
  license "BSD-3-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "239847e833805aa884691aa7c73d4d88f8997787301562a8f18ba87d1ec952a8" => :catalina
    sha256 "ed53d95030acf0d4d1a19e53f856e133c8e8cd4c4fe0f07e5a9e314ff0916f7e" => :mojave
  end
end
