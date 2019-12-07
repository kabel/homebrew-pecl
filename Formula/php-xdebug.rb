require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.8.1.tgz"
  sha256 "838be3974e2555bbbd796eb57c34840659815f23079417b5042e8b534fe61520"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "22afd7f1388da87227609b26975d47239d4bb40990e5b6a05f9bf500bdf97e10" => :mojave
    sha256 "80be1aed8c97eb5930b3dd07e40659b822a3d355efb1f3e43e57f62c964ddcb8" => :high_sierra
  end

  def extension_type
    "zend_extension"
  end
end
