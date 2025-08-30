require_relative "../lib/php_pecl_formula"

class PhpAT83Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.4.5.tgz"
  sha256 "f58442306ce55fe3b811c31759a247242989164f2a7933f05c8d59b06665b9c9"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "b714448b294f4e63ca3f1d19b594a0397cf47f19565e436afd8df65eda53f9f9"
    sha256 cellar: :any_skip_relocation, ventura: "a0b78c4ea39593bbeb1d35c682f8ded1b583f11c3bd7ef6dfae6ee8ecafe0444"
  end

  deprecate! date: "2027-12-31", because: :unsupported

  def extension_type
    "zend_extension"
  end
end
