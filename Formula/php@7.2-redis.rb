require_relative "../lib/php_pecl_formula"

class PhpAT72Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.3.1.tgz"
  sha256 "7c29e49c5cbc6b54ccccc00b44fac4d3ed9895e5718fcf62a5b06281dda8809d"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "d2913482a7574b8950bf55a0e1bcaf0740c5cf3cc15c678859ff59cb78afda39" => :catalina
    sha256 "4d12cb93b84e3835ff42a59203f830bd305ec121c40a6caab90329abe25cb777" => :mojave
  end
end
