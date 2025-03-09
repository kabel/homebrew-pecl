require_relative "../lib/php_pecl_formula"

class PhpAT82Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.4.1.tgz"
  sha256 "4d96bcded78dbd271fb344c119171b625a8597cd67fc6899ec5e019549f1bb87"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 sonoma:  "bb61d0dad4d3006eb63da2ad193825e131c468bce91787d12f77ef4c367018bd"
    sha256 ventura: "7454020008f829b423885463da22753c0647ca94c2b4f3a5e2f4c90d14184c14"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  def extension_type
    "zend_extension"
  end
end
