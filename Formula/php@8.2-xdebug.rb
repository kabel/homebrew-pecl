require_relative "../lib/php_pecl_formula"

class PhpAT82Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.3.1.tgz"
  sha256 "4eb4ee270bbcc5f14195c38f6ee58580e007cf4886ce32e11430318ab5bc2315"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 sonoma:   "0c857fa453463792ae4c426d479be69dd651a4c5bbf89a977817ed6cdc561c31"
    sha256 ventura:  "59f24a318f257754593e7243037b11734e3b648d08f35a87f2ca11619b5d87d3"
    sha256 monterey: "5d6be606fc5b2d747741dbbfa6b5018bc92cc9f45fb5cff1b6370a45473edb27"
  end

  deprecate! date: "2025-12-08", because: :unsupported

  def extension_type
    "zend_extension"
  end
end
