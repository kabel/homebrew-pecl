require_relative "../lib/php_pecl_formula"

class PhpYaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.1.tgz"
  sha256 "e17ad04e752e25fd099bddd2df9d26dfef183c8d00c4179bc9d7a2e1c97d7819"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, catalina: "850cf67dd4d979efcb0d8416d9b2e458c8ed26a4d1c91131e748718a2fea0b07"
    sha256 cellar: :any, mojave:   "9a374bb98280caea1272e8fb84f1218b73b89f9125bed681178bd9b5abb15392"
  end

  depends_on "libyaml"
end
