require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.1.3.tgz"
  sha256 "37d0a6701955f5b3406c6c327b7702bd7c21462e656f3b4cce24a05258013d4e"
  license "PHP-3.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "4370d8107081f4776afd4746617371d8935691f35ed2b89933ba7ee379bc09e9"
    sha256 catalina: "6693f4f8682b7a5e7448a0e51c4da6557e5aa8c1feb32c37a4864ba246cb7beb"
  end

  def extension_type
    "zend_extension"
  end
end
