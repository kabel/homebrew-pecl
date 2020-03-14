require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.9.3.tgz"
  sha256 "a63f567f2238d75a2244c2a4bd6f5abee817280b3567f9006c99481488dc977c"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "826b1c67eb623254d6b63412154a8186cf9075a87ce5a636848b67c61798460f" => :mojave
    sha256 "8c5c19a7b6f1343989fa633808249c342797df64ae5e7cad8b49947ee2a14d42" => :high_sierra
  end

  def extension_type
    "zend_extension"
  end
end
