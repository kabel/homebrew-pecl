require File.expand_path("../lib/php_pecl_formula", __dir__)

class PhpAT72Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.7.2.tgz"
  sha256 "b0f3283aa185c23fcd0137c3aaa58554d330995ef7a3421e983e8d018b05a4a6"

  devel do
    url "https://pecl.php.net/get/xdebug-2.8.0alpha1.tgz"
    sha256 "28b773c233cb9af242bf8e518246bb171ed9cccfbef249a487c5c63d4c8a6165"
  end

  def extension_type
    "zend_extension"
  end
end
