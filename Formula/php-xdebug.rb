require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.7.2.tgz"
  sha256 "b0f3283aa185c23fcd0137c3aaa58554d330995ef7a3421e983e8d018b05a4a6"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "5d93cf07b2cfe73ba032381af5552bae950663e3ec1c3801d7b2fb41f64fafda" => :mojave
    sha256 "ff750219289b86f2e207eefb19466b159eda28892b97f1f67c1575d751860c2a" => :high_sierra
  end

  devel do
    url "https://pecl.php.net/get/xdebug-2.8.0beta2.tgz"
    sha256 "4cdc590909074b1e28525f354d14283e663bf20e17c468246a09633553a1fea5"
  end

  def extension_type
    "zend_extension"
  end
end
