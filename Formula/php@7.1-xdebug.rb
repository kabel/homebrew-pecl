require File.expand_path("../lib/php_pecl_formula", __dir__)

class PhpAT71Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.7.2.tgz"
  sha256 "b0f3283aa185c23fcd0137c3aaa58554d330995ef7a3421e983e8d018b05a4a6"

  devel do
    url "https://pecl.php.net/get/xdebug-2.8.0beta1.tgz"
    sha256 "a576235c207c8b6b5bc41e2a3d5912cac34b4f7bb1def01893be54591e015fc3"
  end

  def extension_type
    "zend_extension"
  end
end
