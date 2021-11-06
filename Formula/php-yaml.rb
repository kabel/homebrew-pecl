require_relative "../lib/php_pecl_formula"

class PhpYaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.2.tgz"
  sha256 "119052f0461d57d86f44c252f9c9b2dd743486c701c1a0aba0aebecdd0d8b82a"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, catalina: "850cf67dd4d979efcb0d8416d9b2e458c8ed26a4d1c91131e748718a2fea0b07"
    sha256 cellar: :any, mojave:   "9a374bb98280caea1272e8fb84f1218b73b89f9125bed681178bd9b5abb15392"
  end

  depends_on "libyaml"
end
