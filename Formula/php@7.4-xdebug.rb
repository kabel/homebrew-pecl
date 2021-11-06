require_relative "../lib/php_pecl_formula"

class PhpAT74Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.1.1.tgz"
  sha256 "9be3ae0fdb4dc4a4c68084626cddc56f12396487e309a8c8dd318f0f900d1a68"
  license "PHP-3.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "56b1033bad0e97c1b1c8c2fc9c9258faa5cbf98045f26329b16d95e3b19110ba"
    sha256 catalina: "1fe617a600398bac40f5e5645b12a26786f319466b28c34899e85ce762fb8c5c"
    sha256 mojave:   "682b4300ae1c182135f44a94da7ee5d0bfef1729bbc00340be35a88f9e108f35"
  end

  def extension_type
    "zend_extension"
  end
end
