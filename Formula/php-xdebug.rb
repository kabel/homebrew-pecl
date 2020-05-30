require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.9.6.tgz"
  sha256 "ab03b6014706491b393aa8d520b5bdaf6735a2f1bc12a7772b2916ef2646e454"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "1d39f8e56c76c5aec1d996261795d85e157737bf59cd39d3627f54bf7698fdc8" => :catalina
    sha256 "77233e2cec07f630be91cb4a465da41e3b09d82574ddf9e9e2fa8005f6c94ecb" => :mojave
  end

  def extension_type
    "zend_extension"
  end
end
