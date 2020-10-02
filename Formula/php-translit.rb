require_relative "../lib/php_pecl_formula"

class PhpTranslit < PhpPeclFormula
  extension_dsl "Transliterates non-latin character sets to latin"

  url "https://pecl.php.net/get/translit-0.7.1.tgz"
  sha256 "60a914a64416381c8e2b00ccf13188a872bca3e80cc6cc4ab6d7f0af949365b8"
  license "BSD-2-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "10d309128dd05e337f201af04ae5d0ca9008be00eed03847642d43e448af2c02" => :catalina
    sha256 "9a87afccb08427239f6f58e630d96e2bea1a7ef8e0790c22a64d05ecb5453c4d" => :mojave
  end
end
