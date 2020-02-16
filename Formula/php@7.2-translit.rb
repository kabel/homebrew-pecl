require_relative "../lib/php_pecl_formula"

class PhpAT72Translit < PhpPeclFormula
  extension_dsl "Transliterates non-latin character sets to latin"

  url "https://pecl.php.net/get/translit-0.6.3.tgz"
  sha256 "169b0d253049c16463eeffa97343e0758a3ac4fb372336917fe9aea700b22a57"
  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "66776703d9775af8f0894d8c6e5185b53e3d03428579d68ee0f93f2ab2636966" => :catalina
    sha256 "dad42f5430c7341299daf55462c9c44febd2645da4d36073a283440d8327874a" => :mojave
  end

end
