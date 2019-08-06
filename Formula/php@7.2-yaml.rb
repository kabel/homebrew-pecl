require_relative "../lib/php_pecl_formula"

class PhpAT72Yaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.0.4.tgz"
  sha256 "9786b0386e648f12cc18a038358bd57bee4906e350a2e9ab776d6a5f18fc6680"

  depends_on "libyaml"
end
