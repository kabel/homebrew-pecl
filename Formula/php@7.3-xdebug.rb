require_relative "../lib/php_pecl_formula"

class PhpAT73Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.0.4.tgz"
  sha256 "b27290491f4634b0cd3badfc3a2be98fb1e3c0c3710a706724d8b195baad72af"
  license "PHP-3.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "1bc7b7f849613e58fd129a4b27c026bdc9c7ab183b2febb03a918aaebedc2158"
    sha256 catalina: "d91106cfcc71f43d374fcbb33cd7cca99cf004047717f4d4c31c408d2cfb7813"
    sha256 mojave:   "a4b20139530414d53108d075354249f2b863d42960b1c3521d03a6cf073b0dac"
  end

  def extension_type
    "zend_extension"
  end
end
