require_relative "../lib/php_pecl_formula"

class PhpAT73Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.9.5.tgz"
  sha256 "775b1705109611b996d6a713fe14117a67846e157eb7dbf349bc0b055e861a10"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "8f4a0ebc7cc237fec20967d82052a3c39e8559c7c14552206e53b08a9078f7ca" => :catalina
    sha256 "1306ad4f129e35099e1da298bfeff943e14200607e500d54f05dfff2a7a39fa2" => :mojave
  end

  def extension_type
    "zend_extension"
  end
end
