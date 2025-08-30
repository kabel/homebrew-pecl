require_relative "../lib/php_pecl_formula"

class PhpAT81Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.4.5.tgz"
  sha256 "f58442306ce55fe3b811c31759a247242989164f2a7933f05c8d59b06665b9c9"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "52f98d0bcf8a97e38b06f69b4bc18e5650daed2d185f5f0b893f02583c9086a7"
    sha256 cellar: :any_skip_relocation, ventura: "c7b0ef4742b894de7cf629016f9dcbe964a56351c1575d674e993414d2e997e7"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  def extension_type
    "zend_extension"
  end
end
