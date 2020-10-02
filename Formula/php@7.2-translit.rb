require_relative "../lib/php_pecl_formula"

class PhpAT72Translit < PhpPeclFormula
  extension_dsl "Transliterates non-latin character sets to latin"

  url "https://pecl.php.net/get/translit-0.7.1.tgz"
  sha256 "60a914a64416381c8e2b00ccf13188a872bca3e80cc6cc4ab6d7f0af949365b8"
  license "BSD-2-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "c1a385736348334ff876cfdb2a5bed554bb2b0871e6f550e895801b3b541b36f" => :catalina
    sha256 "8660cb5a0c32c459b9fcef377903e021aa80904cb11c841c0aee4beb0cfaf4aa" => :mojave
  end
end
