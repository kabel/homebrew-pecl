require_relative "../lib/php_pecl_formula"

class PhpAT74Yaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.1.0.tgz"
  sha256 "5acbf64d770b4b0aef8c877326fc0711112db4215a27c0fe8e4478fb7314b666"
  license "MIT"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "e90072295dc80179e686703773c11573d50a25538e3353345b8468e33b7bce3c" => :catalina
    sha256 "eabd0ba5bc0ab002e6f497834c8d2e0f12fb5856dfaf7134eb49787cfbca1158" => :mojave
  end

  depends_on "libyaml"
end
