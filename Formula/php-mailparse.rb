require_relative "../lib/php_pecl_formula"

class PhpMailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.1.2.tgz"
  sha256 "b0647ab07ea480fcc13533368e38fdb4f4bb45d30dce65fc90652a670a4f4010"
  revision 1
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "031841b8fb8f3e522ab748b119f5270c334437a936df92890f331c831195cefd"
    sha256 cellar: :any_skip_relocation, catalina: "32daedfecf1551cdd76d9111475bf56d35104f354324eefcbd7b60706904dec3"
    sha256 cellar: :any_skip_relocation, mojave:   "8cc19bab8b434bb9b1a2e07a7c8ea63afd48e54ce3de4050e755a0c2fd303aeb"
  end
end
