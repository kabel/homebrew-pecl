require_relative "../lib/php_pecl_formula"

class PhpAT73Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.0.3.tgz"
  sha256 "e7265a81518e397f972dc922e746d1a484537177ff4895435167d109e2932432"
  license "PHP-3.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 "d2d2290a96e76554badbd433c3b9c08b6f1498c78e68b14690d92bda2da89aa5" => :catalina
    sha256 "6f809000f334da0656960b414b2bc6118566edf5e90a35e090b4fdd6c769e05c" => :mojave
  end

  def extension_type
    "zend_extension"
  end
end
