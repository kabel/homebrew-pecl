require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.4.0.tgz"
  sha256 "89667b8d04aaf04c023eb109900e1cce97ca39f97f2f3f24199630cc0e1cc77d"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 sonoma:  "5d872dcb26cfa3252e282b2235b4a717aaa82c506358cfaca5d4a2533a3153e2"
    sha256 ventura: "6eca24c9701d0d67ab7d1b13c13e94c2adfe9704776fed0afbbeb127d8270d73"
  end

  def extension_type
    "zend_extension"
  end
end
