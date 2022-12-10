require_relative "../lib/php_pecl_formula"

class PhpMailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.1.4.tgz"
  sha256 "1474921b32c7eef825144e2be19b1e9d47505ad409729833fd50c25eacdf9577"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "45a644a6ae1b2f8a5759944d15de89e1752053314c2133bc48d9ecb9c77a15c8"
    sha256 cellar: :any_skip_relocation, monterey: "6e7442284c20baebecd27c236d21e4913c39154010cfc2bc4e5f08053e1b7c17"
    sha256 cellar: :any_skip_relocation, big_sur:  "e321b4f166043dfd0f78f488bfe0ab3683e6109561d502cac5a9cccb8954983b"
    sha256 cellar: :any_skip_relocation, catalina: "3e24fb4c43c5bb1f471aa3dc57478877a7e0f7d1741554ac80aba92e6de1ad35"
  end
end
