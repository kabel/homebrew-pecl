require_relative "../lib/php_pecl_formula"

class PhpAT73Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.1.1.tgz"
  sha256 "9be3ae0fdb4dc4a4c68084626cddc56f12396487e309a8c8dd318f0f900d1a68"
  license "PHP-3.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "b50c987ad844063177fbfba3559a8318c0ca2cdefa1faaff309d6c735e69de07"
    sha256 catalina: "a823cd67cb17f6fd0a4c8ada34507b1a36a6d3290bf6f4a97d565cbc65e0f180"
  end

  def extension_type
    "zend_extension"
  end
end
