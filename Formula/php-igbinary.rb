require_relative "../lib/php_pecl_formula"

class PhpIgbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.12.tgz"
  sha256 "b69cffdf054cc6e6b02893ff77cf440cec8c7a87d2dc00c1af183c212269581c"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "aef7c486a2ce4a17fbb9e4098f9e051d67f7a037a03d428a46dd061b46e70f5e"
    sha256 cellar: :any_skip_relocation, monterey: "fedd9dd7dc7f9a5089a0df731d822c92fd60a9acc0945e15b2b402250e0b595d"
    sha256 cellar: :any_skip_relocation, big_sur:  "437f12b13810c3f378c359f019fca1f34f6a2f4965bc120b9fbf0c9c0c76f7ad"
  end
end
