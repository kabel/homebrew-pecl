require_relative "../lib/php_pecl_formula"

class PhpApcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.18.tgz"
  sha256 "d46debe7acad6073b663ba1710c5cac671a60bf666966cf199bf6d07499bde2b"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "e8a472e3f398fb530960c9c749a43deece78142f79575096818b68485b5bf3e6" => :mojave
    sha256 "bdc55cc84f982b5f1d4a0ff63f3451ce79d4f2da348d556374cf807f4f21a6ba" => :high_sierra
  end
end
