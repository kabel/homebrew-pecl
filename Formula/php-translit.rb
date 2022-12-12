require_relative "../lib/php_pecl_formula"

class PhpTranslit < PhpPeclFormula
  extension_dsl "Transliterates non-latin character sets to latin"

  url "https://pecl.php.net/get/translit-0.7.1.tgz"
  sha256 "60a914a64416381c8e2b00ccf13188a872bca3e80cc6cc4ab6d7f0af949365b8"
  revision 3
  license "BSD-2-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "08c7d4bdf42d3af92bbd07e54658844c18a781d170496b6ce1074423bbbdf55c"
    sha256 cellar: :any_skip_relocation, monterey: "26e5bf59964a1c48045fc569aaab22715e09dc2ee67e79650e5c1052b2d7040b"
    sha256 cellar: :any_skip_relocation, big_sur:  "88359d65d718e7bfcf1bb031849f8b1e9254267075bbe1ba07c6f87cbb74b267"
  end
end
