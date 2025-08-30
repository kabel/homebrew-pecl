require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.4.5.tgz"
  sha256 "f58442306ce55fe3b811c31759a247242989164f2a7933f05c8d59b06665b9c9"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "d02812a8207d3e4479a595db4f481beaccc72870e3f78ad2a9c2d8c79ffd042d"
    sha256 cellar: :any_skip_relocation, ventura: "4f6c6819ac7212a14f7f15661e79ff8aec1e257d1f3b9dc6a5fdd195ced7a245"
  end

  def extension_type
    "zend_extension"
  end
end
