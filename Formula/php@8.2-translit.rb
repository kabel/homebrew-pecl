require_relative "../lib/php_pecl_formula"

class PhpAT82Translit < PhpPeclFormula
  extension_dsl "Transliterates non-latin character sets to latin"

  url "https://pecl.php.net/get/translit-0.7.2.tgz"
  sha256 "f9503184d29ff1959df264a5ab39874dd38a2785a650025e8dd84bfa387a8e7e"
  license "BSD-2-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "ebf8d4618b026e553e8809cf95a337cba389dce27ffd9a2f20da22d9afe5c858"
    sha256 cellar: :any_skip_relocation, ventura: "dc2c0f5f6788f822e9b029beca8934968e82b33581c83c4ac7b5d81c6de9157d"
  end

  deprecate! date: "2026-12-31", because: :unsupported
end
