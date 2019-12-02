require_relative "../lib/php_pecl_formula"

class PhpTidewaysXhprof < PhpPeclFormula
  extension_dsl "Modern XHProf compatible PHP Profiler"
  homepage "https://tideways.com/"

  url "https://github.com/tideways/php-xhprof-extension/archive/v5.0.2.tar.gz"
  sha256 "9ef4accba5a060128a6f4fb4e91da94f55cf42615cea47379d536d9702394559"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "b844286345920fb30cbc092d6890768b6b7be1f66e5fb331d9ceebbd49b6384a" => :mojave
    sha256 "329dc5da719919c3ffada73af92e0257c389abac8af254361769099715de951d" => :high_sierra
  end
end
