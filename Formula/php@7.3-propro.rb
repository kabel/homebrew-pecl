require_relative "../lib/php_pecl_formula"

class PhpAT73Propro < PhpPeclFormula
  extension_dsl "Property proxy"

  url "https://pecl.php.net/get/propro-2.1.0.tgz"
  sha256 "7bba0653d90cd8f61816e13ac6c0f7102b4a16dc4c4e966095a121eeb4ae8271"
  license "BSD-2-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, mojave:      "8197ba603eb6df261390c1b36076b107a01e7e23c48703b79b3c53c586da5b82"
    sha256 cellar: :any_skip_relocation, high_sierra: "6772d55c3e3baced7cca7ffa5c18350a406e32fd1667a93db104cc6eff906bde"
  end

  disable! date: "2021-12-06", because: :versioned_formula
end
