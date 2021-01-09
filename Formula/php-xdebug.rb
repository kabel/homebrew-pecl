require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.0.2.tgz"
  sha256 "096d46dec061341868d3e3933b977013a592e2e88992b2c0aba7fa52f87c4e17"
  license "PHP-3.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "28eec6b54f59d37f47afd8dd07a41115e8a0dfe4d152f6f6d08726befe742501" => :catalina
    sha256 "8d18af229001714a01a765054028827e84e7a94552c68161196819d2e514787a" => :mojave
  end

  def extension_type
    "zend_extension"
  end
end
