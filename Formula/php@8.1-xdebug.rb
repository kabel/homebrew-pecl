require_relative "../lib/php_pecl_formula"

class PhpAT81Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.4.2.tgz"
  sha256 "a043888c86e1526ac5ddb220d37ed3a1809e79a16bbb059b9c7e2d2f83b43cc1"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 sonoma:  "3d767101de62d786eedcf1981ae16a964aff5607f536da4f2c9d6f9b38966452"
    sha256 ventura: "2cdb0f58034a3e7686c140620d565bc6554d49775d4da1741278e051e396e94a"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  def extension_type
    "zend_extension"
  end
end
