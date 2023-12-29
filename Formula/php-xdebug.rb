require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.3.1.tgz"
  sha256 "4eb4ee270bbcc5f14195c38f6ee58580e007cf4886ce32e11430318ab5bc2315"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 sonoma:   "c3c8d0e09e468ea8cc4175e6e9cb491902a1c7523844e0d6f699edf86d89c2eb"
    sha256 ventura:  "45d13e4cff83546476cc8a3154e2406a3e7e1834b837c2eac293d45f6e8733c0"
    sha256 monterey: "49d35f84069a5d53e2564bc4899300bae8d3f0867271d6a32c23a28f52d26ca5"
  end

  def extension_type
    "zend_extension"
  end
end
