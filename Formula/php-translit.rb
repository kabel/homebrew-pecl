require_relative "../lib/php_pecl_formula"

class PhpTranslit < PhpPeclFormula
  extension_dsl "Transliterates non-latin character sets to latin"

  url "https://pecl.php.net/get/translit-0.7.1.tgz"
  sha256 "60a914a64416381c8e2b00ccf13188a872bca3e80cc6cc4ab6d7f0af949365b8"
  license "BSD-2-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "5fb974cf46d18289c803f9264d4b8f40cb4cb94bb7b65ecb33b5c2ee24e41729" => :catalina
    sha256 "a41b0de8abbeb7b9044793b851039a83c4e3d66756eaa9c7bafd3fda004c9295" => :mojave
  end
end
