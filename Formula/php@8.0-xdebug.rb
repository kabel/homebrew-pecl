require_relative "../lib/php_pecl_formula"

class PhpAT80Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.2.2.tgz"
  sha256 "f48777371f90cbb315ea4ea082a1ede6765bcfb35d7d6356ab8f71fd6dfcc157"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 sonoma:   "356bc5961ca9f64ee17ca415116b1cb5c75bf5c07369e39014b6d943e8313042"
    sha256 ventura:  "0123bff8a87e92025dbed13397046a4f1a8840003fa77d3f9f1984d04870cd96"
    sha256 monterey: "364d16756e9b19b5350b9a373e0c542e5afe42d97a79c640664691cf1a57e7ab"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula

  def extension_type
    "zend_extension"
  end
end
