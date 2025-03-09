require_relative "../lib/php_pecl_formula"

class PhpAT83Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.4.2.tgz"
  sha256 "a043888c86e1526ac5ddb220d37ed3a1809e79a16bbb059b9c7e2d2f83b43cc1"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 sonoma:  "642ca5e22988570aa2eecffda2367eb51369a7925e1bc5e36846fc65327f1192"
    sha256 ventura: "ae1dd10d9da724e8a72b227b9f356f61e67785e23a9e39e86e65cdcea916c4e9"
  end

  deprecate! date: "2027-12-31", because: :unsupported

  def extension_type
    "zend_extension"
  end
end
