require_relative "../lib/php_pecl_formula"

class PhpAT73Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.9.6.tgz"
  sha256 "ab03b6014706491b393aa8d520b5bdaf6735a2f1bc12a7772b2916ef2646e454"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "784f0b6a921f48fc5145309c67cca4426e0d8397623091b9d432c74c6b6dfb63" => :catalina
    sha256 "d941dafde97cfe639b90f93732ea324fa4270d69d896e13c6995f371064e898b" => :mojave
  end

  def extension_type
    "zend_extension"
  end
end
