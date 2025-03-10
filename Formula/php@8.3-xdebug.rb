require_relative "../lib/php_pecl_formula"

class PhpAT83Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.4.2.tgz"
  sha256 "a043888c86e1526ac5ddb220d37ed3a1809e79a16bbb059b9c7e2d2f83b43cc1"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 sonoma:  "c101686f8921e5ab7c99390b7b0cf1b283cbb0c51e881166f8f7f837ef2ca6f2"
    sha256 ventura: "933d33ee373466f79c477da24af420a919de122676a88f6da302a53371d6075c"
  end

  deprecate! date: "2027-12-31", because: :unsupported

  def extension_type
    "zend_extension"
  end
end
