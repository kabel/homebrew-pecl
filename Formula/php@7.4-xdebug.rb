require_relative "../lib/php_pecl_formula"

class PhpAT74Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.1.6.tgz"
  sha256 "554eca0b4d5b7b93cb2258fab0b0bd84cc8721e74322a2255c14e137cbcad5d2"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 ventura:  "e9e0dac3ac4b6484e511f2788f70668466329c277f1f054eaf0336d6ca41808a"
    sha256 monterey: "67d21f9e638c09a350728d036db105a67a63212c7f9f6e342b1c92ed3526901a"
    sha256 big_sur:  "e86d6dd8c537f34ddcff05687fe9d5be87ef6ce9c6caee71ac82c7c494da584d"
  end

  disable! date: "2022-11-28", because: :versioned_formula

  def extension_type
    "zend_extension"
  end
end
