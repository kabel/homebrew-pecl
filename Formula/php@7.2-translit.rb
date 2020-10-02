require_relative "../lib/php_pecl_formula"

class PhpAT72Translit < PhpPeclFormula
  extension_dsl "Transliterates non-latin character sets to latin"

  url "https://pecl.php.net/get/translit-0.7.1.tgz"
  sha256 "60a914a64416381c8e2b00ccf13188a872bca3e80cc6cc4ab6d7f0af949365b8"
  license "BSD-2-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "291a0c712a9a52b071c43e6eb350c3e8e76f988f2f691140c4ecb86c3ac44311" => :catalina
    sha256 "453dbab45b3629869ee8f96a6b04761d99a979ee2aba849445560516c4426b91" => :mojave
  end
end
