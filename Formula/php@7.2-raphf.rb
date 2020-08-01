require_relative "../lib/php_pecl_formula"

class PhpAT72Raphf < PhpPeclFormula
  extension_dsl "Resource and persistent handles factory"

  url "https://pecl.php.net/get/raphf-2.0.1.tgz"
  sha256 "da3566db17422e5ef08b7ff144162952aabc14cb22407cc6b1d2a2d095812bd0"
  license "BSD-2-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "47b53a6cc5e5c1de9ec7c22b4659114649f1b1df1d04ce4629e1d330232e2657" => :mojave
    sha256 "f2922c773247d04dac47db6524a14a0b3c090df2bf4e2dca35959d6e29983714" => :high_sierra
  end
end
