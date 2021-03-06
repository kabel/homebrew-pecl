require_relative "../lib/php_pecl_formula"

class PhpAT73Apcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.20.tgz"
  sha256 "b99d40fafec06f4d132fcee53e7526ddbfc1d041ea6e04e17389dfad28f9c390"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "7a5cb4c408eaa97d9418793bee787aa8a91bc55622a32bd99c3af8b354beea92" => :catalina
    sha256 "df0bb6355f76fd11a70680c8c919d1fe8f4d07b8694a61e41b0c5fb78195267d" => :mojave
  end
end
