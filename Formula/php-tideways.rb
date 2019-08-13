require_relative "../lib/php_pecl_formula"

class PhpTideways < PhpPeclFormula
  extension_dsl "Modern XHProf compatible PHP Profiler"
  homepage "https://tideways.com/"

  url "https://github.com/tideways/php-xhprof-extension/archive/v4.1.7.tar.gz"
  sha256 "3e32ceacc9eec481e27b5df6d06de1e634294e2af9a64fe069bc686dba54fcb8"
  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "d9fec4230eb1de7f72339e8429e57a1d1fd2821f34eae0df86288501002e5070" => :mojave
    sha256 "0b06a683d91bc7f5575add8ab64c902add404a3185caa7e5ed025166a11b5ac6" => :high_sierra
  end

end
