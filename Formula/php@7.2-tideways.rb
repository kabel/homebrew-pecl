require_relative "../lib/php_pecl_formula"

class PhpAT72Tideways < PhpPeclFormula
  extension_dsl "Modern XHProf compatible PHP Profiler"
  homepage "https://tideways.com/"

  url "https://github.com/tideways/php-xhprof-extension/archive/v4.1.7.tar.gz"
  sha256 "3e32ceacc9eec481e27b5df6d06de1e634294e2af9a64fe069bc686dba54fcb8"
  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "c33b8a7b1fb2204ec101a8d5609f6d4e982431c571f00d664d930ecccb2be583" => :mojave
    sha256 "837a6d87b26e905f4b087cd1b5c38211ef891b852f3eafea2ea25a4707db29ef" => :high_sierra
  end

end
