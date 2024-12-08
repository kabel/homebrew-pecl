require_relative "../lib/php_pecl_formula"

class PhpAT81Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.4.0.tgz"
  sha256 "89667b8d04aaf04c023eb109900e1cce97ca39f97f2f3f24199630cc0e1cc77d"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 sonoma:  "309d944b61286bea5631c2cbfaf732be03c481cf11cc0a788713312f0ba550e0"
    sha256 ventura: "dfca94527e37a11b97e89bda55f8095471e0ac245cfd6d0de2374f812a67877b"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  def extension_type
    "zend_extension"
  end
end
