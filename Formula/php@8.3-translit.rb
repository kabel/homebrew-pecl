require_relative "../lib/php_pecl_formula"

class PhpAT83Translit < PhpPeclFormula
  extension_dsl "Transliterates non-latin character sets to latin"

  url "https://pecl.php.net/get/translit-0.7.2.tgz"
  sha256 "f9503184d29ff1959df264a5ab39874dd38a2785a650025e8dd84bfa387a8e7e"
  license "BSD-2-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "7c5d22e7d914efc309e713bcde5c80b570b41558f57caa10bf734e50a8114ccf"
    sha256 cellar: :any_skip_relocation, ventura: "b24b0575d0ca0cd6a8e66182e1dc048eb1e3d5b0f3473f5358fd81c75f4e9b94"
  end

  deprecate! date: "2027-12-31", because: :unsupported
end
