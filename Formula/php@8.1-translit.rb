require_relative "../lib/php_pecl_formula"

class PhpAT81Translit < PhpPeclFormula
  extension_dsl "Transliterates non-latin character sets to latin"

  url "https://pecl.php.net/get/translit-0.7.2.tgz"
  sha256 "f9503184d29ff1959df264a5ab39874dd38a2785a650025e8dd84bfa387a8e7e"
  license "BSD-2-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "ca2d97ee52978800980c34dc165faaa51f79f2787a6a11bf51545cfa34691151"
    sha256 cellar: :any_skip_relocation, ventura: "0a7c2d4feaacde554946281b53574d6b8b6e12fbaf33169f316fef73a29527d4"
  end

  deprecate! date: "2025-12-31", because: :unsupported
end
