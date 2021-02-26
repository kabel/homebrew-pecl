require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.0.3.tgz"
  sha256 "e7265a81518e397f972dc922e746d1a484537177ff4895435167d109e2932432"
  license "PHP-3.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 "ad8d6c46208d2ab3922e8894cfad79f892d0031ff5205729ee03964cce0e9014" => :catalina
    sha256 "0c73fdb23d4efff31a0a8fc2646923670da5971c1770ca0a8a4346ec457abdac" => :mojave
  end

  def extension_type
    "zend_extension"
  end
end
