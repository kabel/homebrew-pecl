require_relative "../lib/php_pecl_formula"

class PhpAT82Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.4.5.tgz"
  sha256 "f58442306ce55fe3b811c31759a247242989164f2a7933f05c8d59b06665b9c9"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "37be359aa7df43d69c381df7125978130449c08682f9030b8461c488fbafff5f"
    sha256 cellar: :any_skip_relocation, ventura: "a096adad480b5aabd09c2d901613345dd10b035fb25424ba64eac541627934b7"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  def extension_type
    "zend_extension"
  end
end
