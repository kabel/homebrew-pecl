require_relative "../lib/php_pecl_formula"

class PhpAT74TidewaysXhprof < PhpPeclFormula
  extension_dsl "Modern XHProf compatible PHP Profiler"
  homepage "https://tideways.com/"

  url "https://github.com/tideways/php-xhprof-extension/archive/v5.0.2.tar.gz"
  sha256 "9ef4accba5a060128a6f4fb4e91da94f55cf42615cea47379d536d9702394559"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "09d571b40236236b245d39047b3b30d1ff4854a75730508fa86a55ecc2890287" => :mojave
    sha256 "c95e6434a17bf8566f612a420ce8769aad022d520ff4ee97589ff1cc197f2819" => :high_sierra
  end
end
