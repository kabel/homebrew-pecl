require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.1.1.tgz"
  sha256 "9be3ae0fdb4dc4a4c68084626cddc56f12396487e309a8c8dd318f0f900d1a68"
  license "PHP-3.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "8296657c31fd74b0ffe9fe3c33b48c21c8a710a170d9358c7089a53061009bdc"
    sha256 catalina: "c04f916b408f3c495d3fdc123cc6f7cf3327a1e13228691cd1567df96b9a5b24"
    sha256 mojave:   "7413d9233437860a16d6d649eb31dc7a59832b979735d69373f235dfce6f18c9"
  end

  def extension_type
    "zend_extension"
  end
end
