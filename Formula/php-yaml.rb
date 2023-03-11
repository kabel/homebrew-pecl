require_relative "../lib/php_pecl_formula"

class PhpYaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.3.tgz"
  sha256 "5937eb9722ddf6d64626799cfa024598ff2452ea157992e4e67331a253f90236"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "6e692515c7eb63e6bae79745a8c17be6949a90209b7ccbfff90e97f78a052c9f"
    sha256 cellar: :any, monterey: "fc29b89b2b291152a10c503d7bb761a6ff50fefec0d844aa5c82c803f4a00ff3"
    sha256 cellar: :any, big_sur:  "5896a94cfa867d4adb4ae73e5ab9518580118413404b3fb4781fbad71e5a5f30"
  end

  depends_on "libyaml"
end
