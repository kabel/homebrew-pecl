require_relative "../lib/php_pecl_formula"

class PhpAT83Ds < PhpPeclFormula
  extension_dsl "Data Structures for PHP"

  url "https://pecl.php.net/get/ds-1.6.0.tgz"
  sha256 "7c5eaa693e49f43962fa8afa863c51000dc620048dcf9442453c27ca151e291e"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "31cbbda243c95d520c2a26ae59e62112f917219ff8ad7dd2db02e1a869bc4f5a"
    sha256 cellar: :any_skip_relocation, ventura: "b00dd9a4fa1032004bc95ca09a4c8d03a808d277d82791cc1ad4edc55e5ae8b6"
  end

  deprecate! date: "2027-12-31", because: :unsupported
end
