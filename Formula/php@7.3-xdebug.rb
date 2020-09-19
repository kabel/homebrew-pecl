require_relative "../lib/php_pecl_formula"

class PhpAT73Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.9.7.tgz"
  sha256 "390ea712e90e942ed2c3bd8716efe7e31965e0480ac96d44f9d0dce022d7909a"
  license "PHP-3.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "34b5111f73abe077dc87d3bf359505c9f0ce16d015436286c0af450f44d9afb3" => :catalina
    sha256 "e8ad7da958f70ee9d6196325248f75dbdaa429ffc59922b95505022c8268eb09" => :mojave
  end

  def extension_type
    "zend_extension"
  end
end
