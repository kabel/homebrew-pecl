require_relative "../lib/php_pecl_formula"

class PhpIgbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.12.tgz"
  sha256 "b69cffdf054cc6e6b02893ff77cf440cec8c7a87d2dc00c1af183c212269581c"
  revision 1
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "c33045571889aa94ffdc99c0942b69bc4ca16f7f537d05e47ef79abc2e6dd1ff"
    sha256 cellar: :any_skip_relocation, monterey: "a3ec8c6219c4a6a4ecf38312107c4fb23474392eb9ce83f882b49af6d5871ec4"
    sha256 cellar: :any_skip_relocation, big_sur:  "2391f91ec293a2f4b4de255782964d75c43fa4fb9ea62635c5b4391ef9c7406b"
  end

  conf_order "05"
end
