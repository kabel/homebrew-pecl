require_relative "../lib/php_pecl_formula"

class PhpAT81Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.3.0.tgz"
  sha256 "46f839657ff1c42d45a209e5e760a9d96c97fe66f3168ff92754de5a9ca40228"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 sonoma:   "2ae37a675d5bb184c50131a70fc30fc1e89375573d2906c83b41b5e0d93b5a38"
    sha256 ventura:  "d178912bc37a43d0d9c67d8d8fcbeda9c1005fba610f7b04d0f92fc4f12dd03b"
    sha256 monterey: "ede0f3969f3e3916fe6b215a0d640df008005ef237b0b1091410810cc826cf1c"
  end

  deprecate! date: "2024-11-25", because: :unsupported

  def extension_type
    "zend_extension"
  end
end
