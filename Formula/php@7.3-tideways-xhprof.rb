require_relative "../lib/php_pecl_formula"

class PhpAT73TidewaysXhprof < PhpPeclFormula
  extension_dsl "Modern XHProf compatible PHP Profiler"
  homepage "https://tideways.com/"

  url "https://github.com/tideways/php-xhprof-extension/archive/v5.0.2.tar.gz"
  sha256 "9ef4accba5a060128a6f4fb4e91da94f55cf42615cea47379d536d9702394559"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "33441943e77acf98bdadab5115bfb50b66686f12f20303723648d137ce3d6e6c" => :mojave
    sha256 "b80a860ff36ab261e97e215c1747b3babb55acea19e90bc0d494aac830e95351" => :high_sierra
  end
end
