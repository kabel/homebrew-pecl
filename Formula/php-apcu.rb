require_relative "../lib/php_pecl_formula"

class PhpApcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.20.tgz"
  sha256 "b99d40fafec06f4d132fcee53e7526ddbfc1d041ea6e04e17389dfad28f9c390"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "9e0ea06f964a9b2ab14196b53c934949ab5593f27a0dd9e7b985a37e9bc2066e"
    sha256 cellar: :any_skip_relocation, catalina: "54e2c40da584210c8e444325ad8bedb37bf119664a482d079a51a1ad1f2c595e"
    sha256 cellar: :any_skip_relocation, mojave:   "98e6a027308becc7d18982275dd07109ecf4a45f828be6215b121cd4e36aaccb"
  end
end
