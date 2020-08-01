require_relative "../lib/php_pecl_formula"

class PhpAT72Translit < PhpPeclFormula
  extension_dsl "Transliterates non-latin character sets to latin"

  url "https://pecl.php.net/get/translit-0.7.0.tgz"
  sha256 "3a748537b0d4cc535a8ce7c2f80dd61624c47a41eda04d3f8ae75d3506cb41ca"
  license "BSD-2-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "c1a385736348334ff876cfdb2a5bed554bb2b0871e6f550e895801b3b541b36f" => :catalina
    sha256 "8660cb5a0c32c459b9fcef377903e021aa80904cb11c841c0aee4beb0cfaf4aa" => :mojave
  end
end
