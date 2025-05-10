require_relative "../lib/php_pecl_formula"

class PhpAT81Ds < PhpPeclFormula
  extension_dsl "Data Structures for PHP"

  url "https://pecl.php.net/get/ds-1.6.0.tgz"
  sha256 "7c5eaa693e49f43962fa8afa863c51000dc620048dcf9442453c27ca151e291e"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "57b02c01d071622bf5fd6fd72342e77041b2de1d07bd8146de468650cdd21fa9"
    sha256 cellar: :any_skip_relocation, ventura: "1a3054fa5d7279bb9ebbb386bcc449ce313659a9d63e24aec18d638b27a87cc4"
  end

  deprecate! date: "2025-12-31", because: :unsupported
end
