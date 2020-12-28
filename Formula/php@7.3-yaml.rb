require_relative "../lib/php_pecl_formula"

class PhpAT73Yaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.1.tgz"
  sha256 "e17ad04e752e25fd099bddd2df9d26dfef183c8d00c4179bc9d7a2e1c97d7819"
  license "MIT"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "d40604f3e61fd898a2cfb18a51bdb5f638338a0752622a1ffcf8c17bfdc238dd" => :catalina
    sha256 "5d724340a44c212598280f4b0bee2fbc46c7de5c70d2e013bbd86fbc567f3ee8" => :mojave
  end

  depends_on "libyaml"
end
