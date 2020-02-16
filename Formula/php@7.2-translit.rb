require_relative "../lib/php_pecl_formula"

class PhpAT72Translit < PhpPeclFormula
  extension_dsl "Transliterates non-latin character sets to latin"

  url "https://pecl.php.net/get/translit-0.6.3.tgz"
  sha256 "169b0d253049c16463eeffa97343e0758a3ac4fb372336917fe9aea700b22a57"
end
