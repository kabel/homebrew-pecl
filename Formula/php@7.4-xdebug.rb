require_relative "../lib/php_pecl_formula"

class PhpAT74Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.1.5.tgz"
  sha256 "55f6ef381245da079b2fc5ce1cfbcb7961197d0c0e04f9d977613cf9aa969a79"
  license "PHP-3.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 monterey: "6fb1a5ce6bd383eaa3bbfcc46586038cfa514e552d4782781faf85a09bc75cf5"
    sha256 big_sur:  "11b1a063ee3b6185d7403062f98313a207bb1415cab24edcf809724eabcbfeb3"
    sha256 catalina: "79de1c8e6f393b056e869c5778908338227ab0888bb6e8b48c20b2a5fba7f7df"
  end

  def extension_type
    "zend_extension"
  end
end
