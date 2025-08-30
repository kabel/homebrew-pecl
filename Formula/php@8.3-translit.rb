require_relative "../lib/php_pecl_formula"

class PhpAT83Translit < PhpPeclFormula
  extension_dsl "Transliterates non-latin character sets to latin"

  url "https://pecl.php.net/get/translit-0.7.2.tgz"
  sha256 "f9503184d29ff1959df264a5ab39874dd38a2785a650025e8dd84bfa387a8e7e"
  license "BSD-2-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "d1bd52584ceed231129ad54cfed5a8af3ff45933ad62ac7bca08e42fd331ca41"
    sha256 cellar: :any_skip_relocation, ventura: "e95caa020a75c8580478278360f898dea626926488534ad6bd0cac54de3ddee2"
  end

  deprecate! date: "2027-12-31", because: :unsupported
end
