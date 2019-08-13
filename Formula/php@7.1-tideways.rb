require_relative "../lib/php_pecl_formula"

class PhpAT71Tideways < PhpPeclFormula
  extension_dsl "Modern XHProf compatible PHP Profiler"
  homepage "https://tideways.com/"

  url "https://github.com/tideways/php-xhprof-extension/archive/v4.1.7.tar.gz"
  sha256 "3e32ceacc9eec481e27b5df6d06de1e634294e2af9a64fe069bc686dba54fcb8"
  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "2c6b951ab5a91710f9972e9ff185eb58fee90ae483dbb5b39b4afd9b978a5689" => :mojave
    sha256 "45ead1e21919e6f9d229efa6146c9d30b74b14dc172e5502a7086ee2ae4f0f4d" => :high_sierra
  end

end
