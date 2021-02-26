require_relative "../lib/php_pecl_formula"

class PhpAT74Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.0.3.tgz"
  sha256 "e7265a81518e397f972dc922e746d1a484537177ff4895435167d109e2932432"
  license "PHP-3.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 "9dbfdc36b5fb4635c5c7b9f13cce976d357ce34bc029ae91957176aae47612b9" => :catalina
    sha256 "0683ca401e3b0e2c65a3d5707445dd2a3ca0856fda80437d1d9bef8188919c4e" => :mojave
  end

  def extension_type
    "zend_extension"
  end
end
