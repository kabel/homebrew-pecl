require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.3.1.tgz"
  sha256 "4eb4ee270bbcc5f14195c38f6ee58580e007cf4886ce32e11430318ab5bc2315"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 sonoma:   "1e84e4f1e88b4cc7dbd56904422bb21755056adcc621d22c1900abb2b8b148c1"
    sha256 ventura:  "d266a8b7aa92d80ed1588a15dd635708d207879dd3085cd07a70336988773f3f"
    sha256 monterey: "c6c03957560eb64ef302caa1e217673c985d1f58707ccef56d95af0f1d57d5c2"
  end

  def extension_type
    "zend_extension"
  end
end
