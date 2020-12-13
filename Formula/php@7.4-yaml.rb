require_relative "../lib/php_pecl_formula"

class PhpAT74Yaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.0.tgz"
  sha256 "b47a0bcd9e8ff2ab4ba71860cb6e856dfb28bb12f1065f3bcceb64bb8b63c5b4"
  license "MIT"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "79ba31387c9a43bd510d74378adc81c6bed0932a7ca29b0943986490dada0764" => :catalina
    sha256 "71b025f5afe8ad84e0f5ae7e7acdf827459ab2970bcfb6bfb59d774dead80cd7" => :mojave
  end

  depends_on "libyaml"
end
