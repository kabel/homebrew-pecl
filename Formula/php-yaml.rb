require_relative "../lib/php_pecl_formula"

class PhpYaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.1.0.tgz"
  sha256 "5acbf64d770b4b0aef8c877326fc0711112db4215a27c0fe8e4478fb7314b666"
  lisence "MIT"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "c0412b2fd325bbf610b00be2bfaa8ef6aefe3b8f0ca7decc860e1d7fd26cec91" => :catalina
    sha256 "5f3c41773bf43767e462cb8c46c0ea66f1a1f5aa8d754a139dcaa341f1ad4c37" => :mojave
  end

  depends_on "libyaml"
end
