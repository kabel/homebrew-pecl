require_relative "../lib/php_pecl_formula"

class PhpAT73Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.6.tgz"
  sha256 "ca32e395ecdb4447a69d5ea51b35feb19c3bc5759b46896fef6f7e2ca41a8e43"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "6eaea1cd0e89d60880c10712e7c35da7447d89fd70ffc6543489796faa406228"
    sha256 cellar: :any_skip_relocation, catalina: "555a98fb83a89ab85f8ac8f666d5e73fad679b83889ca8c39fd6191a92f053b8"
    sha256 cellar: :any_skip_relocation, mojave:   "06e5547c015005e9691d9e03368ad2edb4f0a1c22f92d5aa23a0410359b04fd4"
  end
end
