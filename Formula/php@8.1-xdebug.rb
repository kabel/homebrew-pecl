require_relative "../lib/php_pecl_formula"

class PhpAT81Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.2.1.tgz"
  sha256 "ef4cb3c228192798874e4530cccceee76840cc80821909740088a1e1a8f00445"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 ventura:  "a4d2949fc1014786175a6a2be0644cf4b23659dacf9ce2e045b6667b4b9b0bc0"
    sha256 monterey: "4a154bb07fd188f0783b716a3ac88bb8211b4e07dabb0b0e670f69b1e906a00c"
    sha256 big_sur:  "4bfac4983499b45ecfc687f453635bef83d031add7123182a4486b6cffd9a946"
  end

  def extension_type
    "zend_extension"
  end
end
