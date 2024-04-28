require_relative "../lib/php_pecl_formula"

class PhpAT80Ds < PhpPeclFormula
  extension_dsl "Data Structures for PHP"

  url "https://pecl.php.net/get/ds-1.4.0.tgz"
  sha256 "a9b930582de8054e2b1a3502bec9d9e064941b5b9b217acc31e4b47f442b93ef"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "26240d448f1c439846f61e4105502cb37efcb63435492eb80748ae7a50f740e6"
    sha256 cellar: :any_skip_relocation, monterey: "407f12e43a771d29ccb8239755511b7700cc703fda3740321862b9e26236fb92"
    sha256 cellar: :any_skip_relocation, big_sur:  "32c4c613ec9db77ddc80a8fd1896a77b466e545eb0951fa184cf548370b4998c"
    sha256 cellar: :any_skip_relocation, catalina: "40febcd26c68f44e3edbeb7419e7741c6bdd4920e91b43402769d22a161ac80e"
  end

  deprecate! date: "2023-11-26", because: :unsupported
end
