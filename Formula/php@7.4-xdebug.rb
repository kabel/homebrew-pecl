require_relative "../lib/php_pecl_formula"

class PhpAT74Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.0.4.tgz"
  sha256 "b27290491f4634b0cd3badfc3a2be98fb1e3c0c3710a706724d8b195baad72af"
  license "PHP-3.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "e6ae51b89b08640e3b9c34f6da06e452db36f7b0adc261303f0d6d89120ab3e0"
    sha256 catalina: "808aeefdea86aeca851aa9fe300c5eea6b256a4b5e838276423086b161a32b21"
    sha256 mojave:   "9b73081a0e6041e31667caf3dc4df43fc2bc3db9a12dd3d271e7784f1149416c"
  end

  def extension_type
    "zend_extension"
  end
end
