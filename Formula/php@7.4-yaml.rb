require_relative "../lib/php_pecl_formula"

class PhpAT74Yaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.0.tgz"
  sha256 "b47a0bcd9e8ff2ab4ba71860cb6e856dfb28bb12f1065f3bcceb64bb8b63c5b4"
  license "MIT"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "e90072295dc80179e686703773c11573d50a25538e3353345b8468e33b7bce3c" => :catalina
    sha256 "eabd0ba5bc0ab002e6f497834c8d2e0f12fb5856dfaf7134eb49787cfbca1158" => :mojave
  end

  depends_on "libyaml"
end
