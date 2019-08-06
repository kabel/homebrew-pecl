require_relative "../lib/php_pecl_formula"

class PhpTideways < PhpPeclFormula
  extension_dsl " Modern XHProf compatible PHP Profiler"
  homepage "https://tideways.com/"

  url "https://github.com/tideways/php-xhprof-extension/archive/v4.1.7.tar.gz"
  sha256 "3e32ceacc9eec481e27b5df6d06de1e634294e2af9a64fe069bc686dba54fcb8"
end
