require_relative "../lib/php_pecl_formula"

class PhpAT73Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.8.0.tgz"
  sha256 "cb1d117ecbec7409a408cf24e59d92f7e3816fe8e2331dd0ffc3dce60228c264"

  def extension_type
    "zend_extension"
  end
end
