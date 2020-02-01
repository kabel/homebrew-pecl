require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.9.2.tgz"
  sha256 "158cce5ff44411128701227ada80933cbd4b03c241a3d0695a309098b3eecc69"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "d20630e8854f7ed41003cd0749da69aa8bf1983b4a85a349a9a1f0a8745504ad" => :mojave
    sha256 "7fa0eab67b9631dec5d13944ee3772bb24fdb4efe63c0c69d25fa1e742bfc538" => :high_sierra
  end

  def extension_type
    "zend_extension"
  end
end
