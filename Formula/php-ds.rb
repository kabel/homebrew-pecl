require_relative "../lib/php_pecl_formula"

class PhpDs < PhpPeclFormula
  extension_dsl "Data Structures for PHP"

  url "https://pecl.php.net/get/ds-1.5.0.tgz"
  sha256 "2b2b45d609ca0958bda52098581ecbab2de749e0b3934d729de61a59226718b0"
  revision 1
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "54542cf011d3fa1b33e855aadb37a539584f15a047531cac9624b1400d98771a"
    sha256 cellar: :any_skip_relocation, ventura: "3c7c0893bce3eb53cef4bd3f7e775fe873335a8017313a6c2bde8b7e216dea4c"
  end
end
