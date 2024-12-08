require_relative "../lib/php_pecl_formula"

class PhpAT83Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.4.0.tgz"
  sha256 "89667b8d04aaf04c023eb109900e1cce97ca39f97f2f3f24199630cc0e1cc77d"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 sonoma:  "d983ce5e213917d911f0393f4568b8cf3b33694b2949bfc527458b198b467b7f"
    sha256 ventura: "64852ee5c51d550c4a3eb0800422c4eed262f108c72252d336f5e4d83c835065"
  end

  def extension_type
    "zend_extension"
  end
end
