require_relative "../lib/php_pecl_formula"

class PhpTranslit < PhpPeclFormula
  extension_dsl "Transliterates non-latin character sets to latin"

  url "https://pecl.php.net/get/translit-0.7.2.tgz"
  sha256 "f9503184d29ff1959df264a5ab39874dd38a2785a650025e8dd84bfa387a8e7e"
  license "BSD-2-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "16cce406dadadf96ec148679bb380090c1c40a5b2f3e1ea625372b8f0ee64f31"
    sha256 cellar: :any_skip_relocation, ventura: "2273abd05415f5a410967a643a32ee4c0d6d93319ff54fdd183e68b17bd13476"
  end
end
