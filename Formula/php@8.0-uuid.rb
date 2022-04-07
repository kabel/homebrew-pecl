require_relative "../lib/php_pecl_formula"

class PhpAT80Uuid < PhpPeclFormula
  extension_dsl "UUID extension"

  url "https://pecl.php.net/get/uuid-1.2.0.tgz"
  sha256 "5cb834d32fa7d270494aa47fd96e062ef819df59d247788562695fd1f4e470a4"
  license "LGPL-2.1-only"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "b59049e7776ff9855526990fbd2e4b64520d8ced7b5fa03284de9207abacbeb0"
    sha256               big_sur:  "7b0cd48a4c8f85565aa8cf5fc15c568ee4ae8f9ae05e55d90e7438e0d594ec6d"
    sha256               catalina: "541253adc89526ed1735d402fc96bac663b11fd1dda949dca5f868030efa041c"
  end

  depends_on "e2fsprogs"

  configure_arg "--with-uuid=#{Formula["e2fsprogs"].opt_prefix}"
end
