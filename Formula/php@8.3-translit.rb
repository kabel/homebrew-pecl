require_relative "../lib/php_pecl_formula"

class PhpAT83Translit < PhpPeclFormula
  extension_dsl "Transliterates non-latin character sets to latin"

  url "https://pecl.php.net/get/translit-0.7.1.tgz"
  sha256 "60a914a64416381c8e2b00ccf13188a872bca3e80cc6cc4ab6d7f0af949365b8"
  license "BSD-2-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "7c5d22e7d914efc309e713bcde5c80b570b41558f57caa10bf734e50a8114ccf"
    sha256 cellar: :any_skip_relocation, ventura: "b24b0575d0ca0cd6a8e66182e1dc048eb1e3d5b0f3473f5358fd81c75f4e9b94"
  end

  deprecate! date: "2027-12-31", because: :unsupported
end
