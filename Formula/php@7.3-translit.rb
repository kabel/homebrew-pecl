require_relative "../lib/php_pecl_formula"

class PhpAT73Translit < PhpPeclFormula
  extension_dsl "Transliterates non-latin character sets to latin"

  url "https://pecl.php.net/get/translit-0.7.0.tgz"
  sha256 "3a748537b0d4cc535a8ce7c2f80dd61624c47a41eda04d3f8ae75d3506cb41ca"
  license "BSD-2-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "6640a987f6ef83c99441d4eb2fdf47861ec8359aeaf071877bac1e35f9ce59a6" => :catalina
    sha256 "4ec47daf107f9c67aae19051ead75ff436d981b13d864b7a4d830c4d27327eea" => :mojave
  end
end
