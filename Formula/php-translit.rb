require_relative "../lib/php_pecl_formula"

class PhpTranslit < PhpPeclFormula
  extension_dsl "Transliterates non-latin character sets to latin"

  url "https://pecl.php.net/get/translit-0.7.0.tgz"
  sha256 "3a748537b0d4cc535a8ce7c2f80dd61624c47a41eda04d3f8ae75d3506cb41ca"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "5b4dfb243267d371ffe8f09bfa9d3399014ca6c62b24eed6ec01ead144cfa0a9" => :catalina
    sha256 "85e8a356b9af98916c06464bf7fa0e41ea1101f5fbee0f4f5293df6fe3990b53" => :mojave
  end
end
