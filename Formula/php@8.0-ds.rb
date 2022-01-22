require_relative "../lib/php_pecl_formula"

class PhpAT80Ds < PhpPeclFormula
  extension_dsl "Data Structures for PHP"

  url "https://pecl.php.net/get/ds-1.4.0.tgz"
  sha256 "a9b930582de8054e2b1a3502bec9d9e064941b5b9b217acc31e4b47f442b93ef"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "c4f078c5429511b53416659ed425ff2106b1d0304ec03fcd5d889c2cd5ef694a"
    sha256 cellar: :any_skip_relocation, catalina: "30aed34dfbae532a6eaba24e620fbe48de51670474070069a83fbccec1f0ec8f"
  end
end
