require_relative "../lib/php_pecl_formula"

class PhpAT73Yaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.1.0.tgz"
  sha256 "5acbf64d770b4b0aef8c877326fc0711112db4215a27c0fe8e4478fb7314b666"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "a78c66060b9013855e07d76010932457dcbb8505d6b0526b8ae23638c41857f2" => :mojave
    sha256 "7d4900503c8036c85d750c79ea41c089889387e8499925a6cbafd6f9a58e830c" => :high_sierra
  end

  depends_on "libyaml"
end
