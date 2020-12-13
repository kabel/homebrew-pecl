require_relative "../lib/php_pecl_formula"

class PhpYaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.0.tgz"
  sha256 "b47a0bcd9e8ff2ab4ba71860cb6e856dfb28bb12f1065f3bcceb64bb8b63c5b4"
  license "MIT"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "6a6464a2b7dba4835286a91a0e75526d1069f7617c437a68a51a8a5550cf8703" => :catalina
    sha256 "69edf176f23ac3adcb8783a1e81266131f75fa22c9cc0326778037bb039e8793" => :mojave
  end

  depends_on "libyaml"
end
