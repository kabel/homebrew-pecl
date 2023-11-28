require_relative "../lib/php_pecl_formula"

class PhpTranslit < PhpPeclFormula
  extension_dsl "Transliterates non-latin character sets to latin"

  url "https://pecl.php.net/get/translit-0.7.1.tgz"
  sha256 "60a914a64416381c8e2b00ccf13188a872bca3e80cc6cc4ab6d7f0af949365b8"
  revision 4
  license "BSD-2-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "ce023b3781d660da4705ae77cd8e2bce419fceb42d3ebbce61e63368e2fd6629"
    sha256 cellar: :any_skip_relocation, ventura:  "48957538e3e7f5d705e3dca8c14923b1420834f10eda4ec3a603cc911cbcb083"
    sha256 cellar: :any_skip_relocation, monterey: "53ed23e895dd9a88435b98c256c7cdd4b70ff0e20e0fff964f9902f7c63d171e"
  end
end
