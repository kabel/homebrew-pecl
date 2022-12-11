require_relative "../lib/php_pecl_formula"

class PhpAT80Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.2.0.tgz"
  sha256 "7769b20eecdadf5fbe9f582512c10b394fb575b6f7a8c3a3a82db6883e0032b7"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 ventura:  "8275c23765df7fc353260ea9e56cf03ebbea9dbd0833c1411cecc5723e2a00a1"
    sha256 monterey: "202629cf1b32e823efeaf225e78e20d4af4484e4a61d433161a4c97d26a76c76"
    sha256 big_sur:  "4082e9e9bb10416edf25b5e384c10624d8e3bbcc32c28d03d48a84a5ff86f660"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula

  def extension_type
    "zend_extension"
  end
end
