require_relative "../lib/php_pecl_formula"

class PhpAT83Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.4.1.tgz"
  sha256 "4d96bcded78dbd271fb344c119171b625a8597cd67fc6899ec5e019549f1bb87"
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
