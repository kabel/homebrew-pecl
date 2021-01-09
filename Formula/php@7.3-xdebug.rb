require_relative "../lib/php_pecl_formula"

class PhpAT73Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.0.2.tgz"
  sha256 "096d46dec061341868d3e3933b977013a592e2e88992b2c0aba7fa52f87c4e17"
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
