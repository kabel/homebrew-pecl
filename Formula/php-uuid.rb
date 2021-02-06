require_relative "../lib/php_pecl_formula"

class PhpUuid < PhpPeclFormula
  extension_dsl "UUID extension"

  url "https://pecl.php.net/get/uuid-1.2.0.tgz"
  sha256 "5cb834d32fa7d270494aa47fd96e062ef819df59d247788562695fd1f4e470a4"
  revision 1
  license "LGPL-2.1-only"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 "2bdb4c4bd16743dcb24896011ad1ae8966b3752db046ba1d4c1eba20d79327f6" => :catalina
    sha256 "abd9ffcff12caecc24efaf9842f9a95a7d87ab267362b766f30c3a4132f873d1" => :mojave
  end

  depends_on "e2fsprogs"

  configure_arg "--with-uuid=#{Formula["e2fsprogs"].opt_prefix}"
end
