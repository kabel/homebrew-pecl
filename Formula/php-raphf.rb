require_relative "../lib/php_pecl_formula"

class PhpRaphf < PhpPeclFormula
  extension_dsl "Resource and persistent handles factory"

  url "https://pecl.php.net/get/raphf-2.0.1.tgz"
  sha256 "da3566db17422e5ef08b7ff144162952aabc14cb22407cc6b1d2a2d095812bd0"
  revision 4
  license "BSD-2-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "9913d4cae46195844fdf09f477130dc3c7afa480d3837fd8925802d1d9148620"
    sha256 cellar: :any_skip_relocation, monterey: "57b35a7ab3da9984d850dc4f1b58d7b49ff9da361e88f693a808a7a1567796bf"
    sha256 cellar: :any_skip_relocation, big_sur:  "8dbba4b211306a0b4a193d3e4c8bcf22563537d86ba7dbad396b3ea38385c713"
    sha256 cellar: :any_skip_relocation, catalina: "64852416e5ee9ad45d545de79dc85cb871d94877593ce95b4c66a184e467d392"
  end

  conf_order "05"
end
