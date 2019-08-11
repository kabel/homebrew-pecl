require_relative "../lib/php_pecl_formula"

class PhpAT71Yaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.0.4.tgz"
  sha256 "9786b0386e648f12cc18a038358bd57bee4906e350a2e9ab776d6a5f18fc6680"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "84bfda0c7830b6de2a30d7de86e0b67738db16620e5ba5d6f3c58cd84281d45c" => :mojave
    sha256 "30b1c8c7daa3d2e361c67f2a413fcd9c3d3a232c56d1a3f25a476b81dfb46a9a" => :high_sierra
  end

  depends_on "libyaml"
end
