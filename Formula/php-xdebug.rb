require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.8.0.tgz"
  sha256 "cb1d117ecbec7409a408cf24e59d92f7e3816fe8e2331dd0ffc3dce60228c264"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "5d93cf07b2cfe73ba032381af5552bae950663e3ec1c3801d7b2fb41f64fafda" => :mojave
    sha256 "ff750219289b86f2e207eefb19466b159eda28892b97f1f67c1575d751860c2a" => :high_sierra
  end

  def extension_type
    "zend_extension"
  end
end
