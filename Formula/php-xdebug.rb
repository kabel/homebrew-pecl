require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.0.0.tgz"
  sha256 "845007e82c1d4e088770d1d87f5832aa3a767cb5a3664fc1615db62cecc3ca62"
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
