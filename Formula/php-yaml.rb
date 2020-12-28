require_relative "../lib/php_pecl_formula"

class PhpYaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.1.tgz"
  sha256 "e17ad04e752e25fd099bddd2df9d26dfef183c8d00c4179bc9d7a2e1c97d7819"
  license "MIT"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "6a6464a2b7dba4835286a91a0e75526d1069f7617c437a68a51a8a5550cf8703" => :catalina
    sha256 "69edf176f23ac3adcb8783a1e81266131f75fa22c9cc0326778037bb039e8793" => :mojave
  end

  depends_on "libyaml"
end
