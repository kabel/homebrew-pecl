require_relative "../lib/php_pecl_formula"

class PhpAT72Yaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.0.4.tgz"
  sha256 "9786b0386e648f12cc18a038358bd57bee4906e350a2e9ab776d6a5f18fc6680"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "29d287bd16dbaf533637e97af97b2bdbb931638e10222f3614b1390f5f691a3c" => :mojave
    sha256 "5893c546a9e45e9f578de1b477fb44c7a5c91782aa98e1fde881bfe6dd13469e" => :high_sierra
  end

  depends_on "libyaml"
end
