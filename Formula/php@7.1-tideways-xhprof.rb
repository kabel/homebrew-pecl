require_relative "../lib/php_pecl_formula"

class PhpAT71TidewaysXhprof < PhpPeclFormula
  extension_dsl "Modern XHProf compatible PHP Profiler"
  homepage "https://tideways.com/"

  url "https://github.com/tideways/php-xhprof-extension/archive/v5.0.2.tar.gz"
  sha256 "9ef4accba5a060128a6f4fb4e91da94f55cf42615cea47379d536d9702394559"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "2c6b951ab5a91710f9972e9ff185eb58fee90ae483dbb5b39b4afd9b978a5689" => :mojave
    sha256 "45ead1e21919e6f9d229efa6146c9d30b74b14dc172e5502a7086ee2ae4f0f4d" => :high_sierra
  end
end
