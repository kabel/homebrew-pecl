require_relative "../lib/php_pecl_formula"

class PhpAT73Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.1.0.tgz"
  sha256 "b956930adaef4a20e7573ad637a2f0e7f9a94ae2adaf122856bc8bf0d1e39d3a"
  license "PHP-3.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "84fe54e95be67d503eae3d31e2d396e7701d03641280d3f4c14f20f3d1274184"
    sha256 catalina: "a4def46ab84d50ecc6fd1b538011ee6923931649878bdbd1877c9eba8dff4041"
    sha256 mojave:   "60d3f37c38851eb145e81a8fa18af8f83b6234e0870998118ab096d6de3f2e57"
  end

  def extension_type
    "zend_extension"
  end
end
