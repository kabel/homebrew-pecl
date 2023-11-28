require_relative "../lib/php_pecl_formula"

class PhpAT82Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.2.2.tgz"
  sha256 "f48777371f90cbb315ea4ea082a1ede6765bcfb35d7d6356ab8f71fd6dfcc157"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 sonoma:   "4e6b6ca92cec21fdc4f491749374d633a8dad1feed3f15016241cc84c38d580f"
    sha256 ventura:  "ec94273e8ec283e2e51fdadacac5984fbfe901660ddd7651f979958289b8963b"
    sha256 monterey: "cd4a85eb069d6dc2c049b14989a45201c19febe3f5ed327dd38c03d98b67ee78"
  end

  deprecate! date: "2025-12-08", because: :unsupported

  def extension_type
    "zend_extension"
  end
end
