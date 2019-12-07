require_relative "../lib/php_pecl_formula"

class PhpAT72Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.8.1.tgz"
  sha256 "838be3974e2555bbbd796eb57c34840659815f23079417b5042e8b534fe61520"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "571db10f379b6bd3e636b1a1e245d0299070eb52f1300f86164d07d494428547" => :mojave
    sha256 "5ee5ce42ada4921903e2b4a948fe4d6c2d8f019054e21dec4fb01443c443400f" => :high_sierra
  end

  def extension_type
    "zend_extension"
  end
end
