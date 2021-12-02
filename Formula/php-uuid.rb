require_relative "../lib/php_pecl_formula"

class PhpUuid < PhpPeclFormula
  extension_dsl "UUID extension"

  url "https://pecl.php.net/get/uuid-1.2.0.tgz"
  sha256 "5cb834d32fa7d270494aa47fd96e062ef819df59d247788562695fd1f4e470a4"
  revision 2
  license "LGPL-2.1-only"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "bfd51556e0c25d7417950c7a1c732b0e280b719068c9d9e5313cb796ad450f61"
    sha256 catalina: "f3462211aaf15086815578628fec756257fb1532bec726bd3e9e326c226aab7c"
  end

  depends_on "e2fsprogs"

  configure_arg "--with-uuid=#{Formula["e2fsprogs"].opt_prefix}"
end
