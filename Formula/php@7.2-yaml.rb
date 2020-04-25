require_relative "../lib/php_pecl_formula"

class PhpAT72Yaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.1.0.tgz"
  sha256 "5acbf64d770b4b0aef8c877326fc0711112db4215a27c0fe8e4478fb7314b666"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "1741a134f663f27b50c8bd5b8db5728cd8178f4f48450d70b522b7b596e7124f" => :catalina
    sha256 "2fb7b6fa55006a07e45e9cc97db427b97b8bfd3f0c3414d4c4993a63acda567c" => :mojave
  end

  depends_on "libyaml"
end
