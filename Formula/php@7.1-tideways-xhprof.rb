require_relative "../lib/php_pecl_formula"

class PhpAT71TidewaysXhprof < PhpPeclFormula
  extension_dsl "Modern XHProf compatible PHP Profiler"
  homepage "https://tideways.com/"

  url "https://github.com/tideways/php-xhprof-extension/archive/v5.0.2.tar.gz"
  sha256 "9ef4accba5a060128a6f4fb4e91da94f55cf42615cea47379d536d9702394559"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "b20685d788a075d70c223466e7a25a7d5f000c87db05534c69ba83d0fa35ea8f" => :mojave
    sha256 "29728cc88158d150c0e2a8a1ae71d50e6e25a80e08a8d2ddedffc00295c5bd5b" => :high_sierra
  end
end
