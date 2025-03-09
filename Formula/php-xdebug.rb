require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.4.1.tgz"
  sha256 "4d96bcded78dbd271fb344c119171b625a8597cd67fc6899ec5e019549f1bb87"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 sonoma:  "a96232a8de078c38639a040cebb391462c2b68a6a3bfbdcc51ce364dce1055ca"
    sha256 ventura: "41b6dc1a4273b24e35d67303d81b81abc39d75426fd571c0f00b287fae4f0813"
  end

  def extension_type
    "zend_extension"
  end
end
