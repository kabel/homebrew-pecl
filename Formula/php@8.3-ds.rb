require_relative "../lib/php_pecl_formula"

class PhpAT83Ds < PhpPeclFormula
  extension_dsl "Data Structures for PHP"

  url "https://pecl.php.net/get/ds-1.6.0.tgz"
  sha256 "7c5eaa693e49f43962fa8afa863c51000dc620048dcf9442453c27ca151e291e"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "70d94e280bc14b8fda4cbf62c0fd6f1f4d1adb740cb469d347ed4022c86d5d6f"
    sha256 cellar: :any_skip_relocation, ventura: "df513a6bfc1f555966a318a89cb54777a5714e1372c780dbf22db1cd9f295355"
  end

  deprecate! date: "2027-12-31", because: :unsupported
end
