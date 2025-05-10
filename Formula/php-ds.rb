require_relative "../lib/php_pecl_formula"

class PhpDs < PhpPeclFormula
  extension_dsl "Data Structures for PHP"

  url "https://pecl.php.net/get/ds-1.6.0.tgz"
  sha256 "7c5eaa693e49f43962fa8afa863c51000dc620048dcf9442453c27ca151e291e"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "128c6e0d42bb609790cc64c4f9dc2868bf8d23dd069c481441932ebd3e6424cb"
    sha256 cellar: :any_skip_relocation, ventura: "0aa002927fb17854320cd9d2bdfb5fbe963a0b90d88826b13f14315d523b7aeb"
  end
end
