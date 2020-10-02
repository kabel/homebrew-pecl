require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.9.8.tgz"
  sha256 "f555b6cc58d96c9965af942d22e0f1818b7a477a410c76b1ab0eebe85a762f8a"
  license "PHP-3.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "eb1841729548067e206692640e342ba8561722c5d87cf10e7c9320a613541e07" => :catalina
    sha256 "a96bde98a75196a57a76989da921f51236406df64614375b6da2dc5acea1cea4" => :mojave
  end

  def extension_type
    "zend_extension"
  end
end
