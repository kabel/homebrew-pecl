require_relative "../lib/php_pecl_formula"

class PhpIgbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.7.tgz"
  sha256 "d0dc0d0b56a985f4f52cea20717133d3da05368876bc0f94317c1e60e0319e7d"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "500bf9c7e224a5cfce55c9b2be04093b20c64c90a7ce261932d71db36f309e79"
    sha256 cellar: :any_skip_relocation, catalina: "26e7a44696dcc3f92ec08917a1ecc769960958bb41cba5aa83e9e5146eaac0f8"
  end
end
