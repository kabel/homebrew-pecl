require_relative "../lib/php_pecl_formula"

class PhpAT80Yaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.3.tgz"
  sha256 "5937eb9722ddf6d64626799cfa024598ff2452ea157992e4e67331a253f90236"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "814c738162120f36ecc8e703ee7dbb2cc23c3c860df87cd50cee59bc17981bd0"
    sha256 cellar: :any, monterey: "b9153da96c05578b65fd5e648cf937db1b6ba3bba81fa43c73ed4703af63cffc"
    sha256 cellar: :any, big_sur:  "b63a5cadf258ea2cdaf033b9769b865f62e2572906cca0f915f0b04a2a5db8ef"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula

  depends_on "libyaml"
end
