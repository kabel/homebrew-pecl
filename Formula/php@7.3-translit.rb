require_relative "../lib/php_pecl_formula"

class PhpAT73Translit < PhpPeclFormula
  extension_dsl "Transliterates non-latin character sets to latin"

  url "https://pecl.php.net/get/translit-0.7.0.tgz"
  sha256 "3a748537b0d4cc535a8ce7c2f80dd61624c47a41eda04d3f8ae75d3506cb41ca"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "70260388bad3eb4bea664d2f14138955b7f994ce8c374da81c092c66186d98d2" => :catalina
    sha256 "4119d02a7da782f3ffd0a58141eea7c8d8f768c2adfc6234d055db396fe5511d" => :mojave
  end
end
