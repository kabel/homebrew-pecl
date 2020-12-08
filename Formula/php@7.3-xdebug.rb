require_relative "../lib/php_pecl_formula"

class PhpAT73Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.0.1.tgz"
  sha256 "0b95317153a2254f3da1fc9010fdffc40c9eec232be3ede088ec4c9bd94049b5"
  license "PHP-3.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "132db6675270f5700ffcae86ad842b277c3e51bef9082e15de769eab32bf9987" => :catalina
    sha256 "8b9b5310ff7f78dfcc15834b5fae04c6152fbabaedc7da773278150210c4240e" => :mojave
  end

  def extension_type
    "zend_extension"
  end
end
