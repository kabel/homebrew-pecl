require_relative "../lib/php_pecl_formula"

class PhpAT72Uuid < PhpPeclFormula
  extension_dsl "UUID extension"

  url "https://pecl.php.net/get/uuid-1.2.0.tgz"
  sha256 "5cb834d32fa7d270494aa47fd96e062ef819df59d247788562695fd1f4e470a4"
  license "LGPL-2.1-only"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "cc6f26d97f64f3a2eb3d7844ab04d343802a9485b237ea67996c32cc7f1fe562" => :catalina
    sha256 "619862497281855a9567da66058b2fd2c7a2663cee51fc926c2db8b97ad48ea7" => :mojave
  end

  depends_on "e2fsprogs"

  configure_arg "--with-uuid=#{Formula["e2fsprogs"].opt_prefix}"
end
