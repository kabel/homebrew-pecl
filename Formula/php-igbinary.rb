require_relative "../lib/php_pecl_formula"

class PhpIgbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.4.tgz"
  sha256 "c39147f1548b7d9883468e9d12be6cae84466e09baa24199e4e7a66993ef60bb"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "b5c877df58a75c1600d4f757b3a2f931fa7de1ef50a8d5469bbd69f6c8f667d4"
    sha256 cellar: :any_skip_relocation, catalina: "22ca9a9b72cb526f183d433f0d9febf967dd9bf1104c144d8b527bbe7a6a7ac6"
    sha256 cellar: :any_skip_relocation, mojave:   "3fd095c083c528626d99f4dcf5705d8d5b36379fde20d514ada908eaf5f9223b"
  end
end
