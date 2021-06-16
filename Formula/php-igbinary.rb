require_relative "../lib/php_pecl_formula"

class PhpIgbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.3.tgz"
  sha256 "c0957f6e6d9aa96358fd5fbd8c1f919470511b7287ba305bc938cc3919c4cab9"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "a9fbced67376b9f57cfa0ce90b1e49949a005139495669d5ed0cc9b8f8b7b60f"
    sha256 cellar: :any_skip_relocation, catalina: "8deaf20e32e61a221faa6517ce5ba8e0cc8e3d2e3168e23400daf2fd836cd0e6"
    sha256 cellar: :any_skip_relocation, mojave:   "2142cdd72e82f37bfa45081146049dd531ff060ed6368baeb4daedff13b8f845"
  end
end
