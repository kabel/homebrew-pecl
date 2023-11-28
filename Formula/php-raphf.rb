require_relative "../lib/php_pecl_formula"

class PhpRaphf < PhpPeclFormula
  extension_dsl "Resource and persistent handles factory"

  url "https://pecl.php.net/get/raphf-2.0.1.tgz"
  sha256 "da3566db17422e5ef08b7ff144162952aabc14cb22407cc6b1d2a2d095812bd0"
  revision 5
  license "BSD-2-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "3f84af5c9c84d8d723e8a2d5834f438a7c0b3e2995f38816b4a93b82952616ff"
    sha256 cellar: :any_skip_relocation, ventura:  "b2b1a4d119365e7751a370549483180b6a74afe0266fdf2e7a6297e29ca7c4b7"
    sha256 cellar: :any_skip_relocation, monterey: "333bdb8a4b3defee8c368caae7e93f2a948d6bf1b039c0b257e63d8ea2b036e4"
  end

  conf_order "05"
end
