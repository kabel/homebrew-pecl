require_relative "../lib/php_pecl_formula"

class PhpAT73Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.9.3.tgz"
  sha256 "a63f567f2238d75a2244c2a4bd6f5abee817280b3567f9006c99481488dc977c"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "0184c1e25d9560a957c1fa229324968433bf2c1fb379088a429c526546440bd1" => :catalina
    sha256 "bc6a5a6dda01c0d7e1f6f856366a9abea295ea2c4143c64e7c4c36d57779f127" => :mojave
  end

  def extension_type
    "zend_extension"
  end
end
