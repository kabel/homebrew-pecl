require_relative "../lib/php_pecl_formula"

class PhpApcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.17.tgz"
  sha256 "6b11b477890a9c096ad856e0251920d1d8b9558b7d115256c027e0223755c793"
  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "e8a472e3f398fb530960c9c749a43deece78142f79575096818b68485b5bf3e6" => :mojave
    sha256 "bdc55cc84f982b5f1d4a0ff63f3451ce79d4f2da348d556374cf807f4f21a6ba" => :high_sierra
  end

end
