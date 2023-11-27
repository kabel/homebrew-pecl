require_relative "../lib/php_pecl_formula"

class PhpAT81Translit < PhpPeclFormula
  extension_dsl "Transliterates non-latin character sets to latin"

  url "https://pecl.php.net/get/translit-0.7.1.tgz"
  sha256 "60a914a64416381c8e2b00ccf13188a872bca3e80cc6cc4ab6d7f0af949365b8"
  license "BSD-2-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "93d29bf944c4a25b0d5e84909cc3ab2f6cd5299f59a225fcfe944ad3a64d4347"
    sha256 cellar: :any_skip_relocation, monterey: "5553aa99c92d61505fce2641a13f41b24f9b2996dbc254f2d5aac9ed919cae13"
    sha256 cellar: :any_skip_relocation, big_sur:  "93bbfea0e006530950f0714a7a7d9c8bb904b153f285df8ceab5137c2ca3d565"
  end

  deprecate! date: "2024-11-25", because: :unsupported
end
