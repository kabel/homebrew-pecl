require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.8.0.tgz"
  sha256 "cb1d117ecbec7409a408cf24e59d92f7e3816fe8e2331dd0ffc3dce60228c264"
  revision 1

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "9c66ba62f54a12de13712fd358fa67e13b6f013b8e8e6c0de15b00aa434fe9d3" => :mojave
    sha256 "34b14ad4a8b648655acb4d338e938129779bc9aa412689ff0922d864f183066b" => :high_sierra
  end

  def extension_type
    "zend_extension"
  end
end
