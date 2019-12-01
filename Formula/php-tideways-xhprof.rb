require_relative "../lib/php_pecl_formula"

class PhpTidewaysXhprof < PhpPeclFormula
  extension_dsl "Modern XHProf compatible PHP Profiler"
  homepage "https://tideways.com/"

  url "https://github.com/tideways/php-xhprof-extension/archive/v5.0.2.tar.gz"
  sha256 "9ef4accba5a060128a6f4fb4e91da94f55cf42615cea47379d536d9702394559"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "d9fec4230eb1de7f72339e8429e57a1d1fd2821f34eae0df86288501002e5070" => :mojave
    sha256 "0b06a683d91bc7f5575add8ab64c902add404a3185caa7e5ed025166a11b5ac6" => :high_sierra
  end
end
