require_relative "../lib/php_pecl_formula"

class PhpIgbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.7.tgz"
  sha256 "d0dc0d0b56a985f4f52cea20717133d3da05368876bc0f94317c1e60e0319e7d"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "a06028d11b0a048845364bb2c5e0982243ba3e01af2e6d1a781e59a6a5308cda"
    sha256 cellar: :any_skip_relocation, big_sur:  "4526801cce4e0580e31351b1aeadd82ddbd6f9aaf9084d3b2f2e07a155ea7f6f"
    sha256 cellar: :any_skip_relocation, catalina: "3b549e58e7a05a13e4ebe560d37f7bda033254df8b0a787bf02ae4be8dd3402c"
  end
end
