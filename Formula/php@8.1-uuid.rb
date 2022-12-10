require_relative "../lib/php_pecl_formula"

class PhpUuid < PhpPeclFormula
  extension_dsl "UUID extension"

  url "https://pecl.php.net/get/uuid-1.2.0.tgz"
  sha256 "5cb834d32fa7d270494aa47fd96e062ef819df59d247788562695fd1f4e470a4"
  revision 2
  license "LGPL-2.1-only"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "cdf4ef0e74a209e96b9f25d9e99eeed659e6204a42ac03857914dffa24c1feb2"
    sha256 cellar: :any, monterey: "3d1082f641b295ab27553cd0ee2a0a2cad00f0c6e58e89651c6e4b7084fe0f90"
    sha256               big_sur:  "bfd51556e0c25d7417950c7a1c732b0e280b719068c9d9e5313cb796ad450f61"
    sha256               catalina: "f3462211aaf15086815578628fec756257fb1532bec726bd3e9e326c226aab7c"
  end

  depends_on "e2fsprogs"

  configure_arg "--with-uuid=#{Formula["e2fsprogs"].opt_prefix}"
end
