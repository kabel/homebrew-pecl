require_relative "../lib/php_pecl_formula"

class PhpAT74Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.12.tgz"
  sha256 "b69cffdf054cc6e6b02893ff77cf440cec8c7a87d2dc00c1af183c212269581c"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "a73b4c419d9d3e48458b8e50a8030b8f78270b93e8119a73fbfc0b229284dc6f"
    sha256 cellar: :any_skip_relocation, monterey: "9dad037ffa7e34c6ccb0c9803a34574bdf04006228b0c1b614f16e214f2bd0a8"
    sha256 cellar: :any_skip_relocation, big_sur:  "8d46068623c755ecbd519666c8f2aeffc9d44ffaa63108741c33ae4c222e83bd"
  end
end
