require_relative "../lib/php_pecl_formula"

class PhpAT71Apcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.18.tgz"
  sha256 "d46debe7acad6073b663ba1710c5cac671a60bf666966cf199bf6d07499bde2b"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "149026684f49ed9035cecb8842b0c4118d32fee740537295ac305b463f8e25de" => :mojave
    sha256 "a9f1ebf299b4b8f712c9950758c3ce87e92be49f98d4733863225a54346fc3d3" => :high_sierra
  end
end
