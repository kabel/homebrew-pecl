require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.3.2.tgz"
  sha256 "15545b8311bedb5e7df08fd90d6653d9bf33629791e8119e70350475df932c55"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 sonoma:   "2b8dac6893e2af37c2d35a075e636fc66e6f8d090bf7ecd2baed2767e3653785"
    sha256 ventura:  "a0b28626256d1d79e6feaf740c5fa8a898f8922c20004252c2adcd3b7eff38ab"
    sha256 monterey: "43da15e250a5b1794ad3a4260eac8e8bc9d9c2628b6bdfdf921c9e3e3bcdab2e"
  end

  def extension_type
    "zend_extension"
  end
end
