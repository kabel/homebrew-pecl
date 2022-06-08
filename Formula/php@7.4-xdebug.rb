require_relative "../lib/php_pecl_formula"

class PhpAT74Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.1.5.tgz"
  sha256 "55f6ef381245da079b2fc5ce1cfbcb7961197d0c0e04f9d977613cf9aa969a79"
  license "PHP-3.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 monterey: "fbad2f010b55dfd1caec2d047daed2db6bddb514bbcf94afa91bca0e9c970455"
    sha256 big_sur:  "e97f7b384d6336454e5a7c5eecdb2ad5bac1446c0279ff73cdff5a1fe1f6a6bc"
    sha256 catalina: "7c4e428ec967ba3d5cac3cf28a4426a7ce57da5090a91f8d44bb149d53a01788"
  end

  def extension_type
    "zend_extension"
  end
end
