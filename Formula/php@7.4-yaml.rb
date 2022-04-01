require_relative "../lib/php_pecl_formula"

class PhpAT74Yaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.2.tgz"
  sha256 "119052f0461d57d86f44c252f9c9b2dd743486c701c1a0aba0aebecdd0d8b82a"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "41968aafe32b3178f4fcbb9976d087c76fcffe00bed4d25e568f054119c6b678"
    sha256 cellar: :any, big_sur:  "dd13d0f49b2c65098f370ed25aa0d30aa5628a6fcc0905c29782aad611e32b5b"
    sha256 cellar: :any, catalina: "cb1407539e8e1e48dd96dd395e100c430a6ce94817ce8e61853f39c663086daf"
  end

  depends_on "libyaml"
end
