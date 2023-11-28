require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.3.0alpha3.tgz"
  sha256 "84c2d71b718db87e3b6b2e739828494645a96e4b44fb3f43583b80b92bd9134b"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 sonoma:   "79b81b0c2dc922f7f5f08f619a1518efa81a974261e0cbb56cf65477663b0bb9"
    sha256 ventura:  "d99ff566abd54d91029ce7214cadcb28f283313e530cc2a41b12dd63a67c871c"
    sha256 monterey: "a41c4f742a0f5bd7fea1eec4012593ec307a36013d302a8f115bd608e90cfb52"
  end

  def extension_type
    "zend_extension"
  end
end
