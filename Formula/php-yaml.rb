require_relative "../lib/php_pecl_formula"

class PhpYaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.0.4.tgz"
  sha256 "9786b0386e648f12cc18a038358bd57bee4906e350a2e9ab776d6a5f18fc6680"
  revision 1

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "c458e66fd9a1bef4b9c7903822286b36c3f833d06e62ad59473fa549e4c7b8b0" => :mojave
    sha256 "a8f538bd9bd34f9aa99b9f95c729c0ffd4e1eae3d6e8f71a0f15ff85b28d2613" => :high_sierra
  end

  depends_on "libyaml"
end
