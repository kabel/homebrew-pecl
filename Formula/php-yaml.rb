require_relative "../lib/php_pecl_formula"

class PhpYaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.1.0.tgz"
  sha256 "5acbf64d770b4b0aef8c877326fc0711112db4215a27c0fe8e4478fb7314b666"
  revision 1
  license "MIT"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "d2e94a0b90647276ce7701b890b1a86d3c881cf7ac236c6e4aa3dee9164335ba" => :catalina
    sha256 "cd7c747f1a72f7cdcad4d0de726c1c8ad9402f339715b9d32d5debd393749c7e" => :mojave
  end

  depends_on "libyaml"
end
