require_relative "../lib/php_pecl_formula"

class PhpMailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.1.4.tgz"
  sha256 "1474921b32c7eef825144e2be19b1e9d47505ad409729833fd50c25eacdf9577"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "40489ba4a9339d61e0a0962e7c6be5d6337023ec9be1214a9cfe5fc14bc9d314"
    sha256 cellar: :any_skip_relocation, big_sur:  "e913b038b66c606b18521a310de68a9d605d8699ff4bd894538f57eae4bdb879"
    sha256 cellar: :any_skip_relocation, catalina: "675de8fd497645974a9130b3d11e18e30792b68c67a1f7e1b697b50f23cd6eed"
  end
end
