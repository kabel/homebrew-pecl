require_relative "../lib/php_pecl_formula"

class PhpAT81Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.3.2.tgz"
  sha256 "15545b8311bedb5e7df08fd90d6653d9bf33629791e8119e70350475df932c55"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 sonoma:   "97bae36917afc8e5f887b2b541de62cc8740647a33b1d3843914889549fc6f91"
    sha256 ventura:  "793771aa5bce6ecb18273dabb194ed383fd1f079fef0c7f4e81c119970247172"
    sha256 monterey: "a603eee2895cef5849296a9e3dac614e2dd870e6ff03ebaab6fa8b8152037b28"
  end

  deprecate! date: "2024-11-25", because: :unsupported

  def extension_type
    "zend_extension"
  end
end
