require_relative "../lib/php_pecl_formula"

class PhpAT81Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.22.0.tgz"
  sha256 "1cc1d1f08a3cd84f5747eba6aaa452e2975d968651fad15e77479498bc39c5d9"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "bf3ce447166d3cb22e6ad602bc0d4c4833a020a8660681404561838d3a2a6744"
    sha256 cellar: :any_skip_relocation, monterey: "aaaa8fdfe2573d0ae4c2d41ae5d8def07236c9ad19e24a36ec4261a45cc25939"
    sha256 cellar: :any_skip_relocation, big_sur:  "3e51d5198bef8dd8689225c0f4c65cf6ed1efd2c309b81addd940f8f9e2b81f0"
  end
end
