require_relative "../lib/php_pecl_formula"

class PhpAT73Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.9.2.tgz"
  sha256 "158cce5ff44411128701227ada80933cbd4b03c241a3d0695a309098b3eecc69"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "4de2855d60ddb9083050dec9de1ba1c184ab310bff75676995dc0482feb8fd80" => :mojave
    sha256 "844c9a267ea3bf0f4afdbf9f16e7d5f0c672b4eb30ce8e49024ad14bedffea9d" => :high_sierra
  end

  def extension_type
    "zend_extension"
  end
end
