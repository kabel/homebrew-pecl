require_relative "../lib/php_pecl_formula"

class PhpAT81Yaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.3.tgz"
  sha256 "5937eb9722ddf6d64626799cfa024598ff2452ea157992e4e67331a253f90236"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "4962e2f08a275dfb48b00b4ec9e0ac48c02b7b571467dd713ce822e20ebea28b"
    sha256 cellar: :any, monterey: "8d90d296ab6479264ddc3273016e0ce6d8ca6d30adbc06fccc851e2e71c6e4be"
    sha256 cellar: :any, big_sur:  "11811f1af90de2076e955894b6c2514c10615c970ef97355a62899ba04cc3b52"
  end

  depends_on "libyaml"
end
