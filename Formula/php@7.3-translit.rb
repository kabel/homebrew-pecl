require_relative "../lib/php_pecl_formula"

class PhpAT73Translit < PhpPeclFormula
  extension_dsl "Transliterates non-latin character sets to latin"

  url "https://pecl.php.net/get/translit-0.6.3.tgz"
  sha256 "169b0d253049c16463eeffa97343e0758a3ac4fb372336917fe9aea700b22a57"
  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "70260388bad3eb4bea664d2f14138955b7f994ce8c374da81c092c66186d98d2" => :catalina
    sha256 "4119d02a7da782f3ffd0a58141eea7c8d8f768c2adfc6234d055db396fe5511d" => :mojave
  end

end
