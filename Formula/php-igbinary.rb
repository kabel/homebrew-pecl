require_relative "../lib/php_pecl_formula"

class PhpIgbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.12.tgz"
  sha256 "b69cffdf054cc6e6b02893ff77cf440cec8c7a87d2dc00c1af183c212269581c"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "b3c3dc3501299833b804683ad1869689e8b340f0c330d7e6bc0437cb623b8ca2"
    sha256 cellar: :any_skip_relocation, big_sur:  "425b4b7ff89fddaf85b58581a37f98e4ae747944a781cd28563c7bd3f333de6b"
    sha256 cellar: :any_skip_relocation, catalina: "75937bd67301a3b07ca024bb37c98ade4d17dbf90762efc627306c5ea896e557"
  end
end
