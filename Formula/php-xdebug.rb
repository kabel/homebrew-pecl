require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.1.0.tgz"
  sha256 "b956930adaef4a20e7573ad637a2f0e7f9a94ae2adaf122856bc8bf0d1e39d3a"
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
