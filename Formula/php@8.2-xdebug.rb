require_relative "../lib/php_pecl_formula"

class PhpAT82Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.4.5.tgz"
  sha256 "f58442306ce55fe3b811c31759a247242989164f2a7933f05c8d59b06665b9c9"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 sonoma:  "dbd2cd769c04c62b661ab1d01fa986117614703a10e5c4eb0c104b422b5a0f0d"
    sha256 ventura: "8682282e8b1f4303d30436049565946b8fc514d30a9aedaaabb66beeb219f160"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  def extension_type
    "zend_extension"
  end
end
