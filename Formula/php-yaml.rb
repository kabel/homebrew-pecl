require_relative "../lib/php_pecl_formula"

class PhpYaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.0.4.tgz"
  sha256 "9786b0386e648f12cc18a038358bd57bee4906e350a2e9ab776d6a5f18fc6680"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "e786f9210896ec3663c89401bbf0c9b6977c9b40f44336fbbd8fb80b89317eb7" => :mojave
    sha256 "361fc840bf80ebd964b018986c49e8581af4281fe04c35c33c7742910d6a5a36" => :high_sierra
  end

  depends_on "libyaml"
end
