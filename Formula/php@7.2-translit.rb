require_relative "../lib/php_pecl_formula"

class PhpAT72Translit < PhpPeclFormula
  extension_dsl "Transliterates non-latin character sets to latin"

  url "https://pecl.php.net/get/translit-0.7.0.tgz"
  sha256 "3a748537b0d4cc535a8ce7c2f80dd61624c47a41eda04d3f8ae75d3506cb41ca"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "66776703d9775af8f0894d8c6e5185b53e3d03428579d68ee0f93f2ab2636966" => :catalina
    sha256 "dad42f5430c7341299daf55462c9c44febd2645da4d36073a283440d8327874a" => :mojave
  end
end
