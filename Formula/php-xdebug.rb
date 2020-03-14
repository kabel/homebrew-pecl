require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.9.3.tgz"
  sha256 "a63f567f2238d75a2244c2a4bd6f5abee817280b3567f9006c99481488dc977c"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "56613f253031a3950d16dd24247b148432435930864b331151ba6f62d3a97da2" => :catalina
    sha256 "5c17c32553bc06e494825c50e0e9e3164ce091a3a2e8ff862a4191f96c542a91" => :mojave
  end

  def extension_type
    "zend_extension"
  end
end
