require_relative "../lib/php_pecl_formula"

class PhpYaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.2.tgz"
  sha256 "119052f0461d57d86f44c252f9c9b2dd743486c701c1a0aba0aebecdd0d8b82a"
  revision 2
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "e5096cc7207b5d515ab8647d8a3f2a7813b8179759379c863470cff70f1f53d1"
    sha256 cellar: :any, big_sur:  "7ba43e3946a19ed121a6f7aef0590f5ed62aa87aee6ac0b3e46407a49ddceb2f"
    sha256 cellar: :any, catalina: "a5b8d12a22a97e0fdfb2b947ba547ffaaca214019066a10ef5a612110e95e31b"
  end

  depends_on "libyaml"
end
