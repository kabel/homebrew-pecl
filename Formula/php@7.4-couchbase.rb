require_relative "../lib/php_pecl_formula"

class PhpAT74Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-3.1.1.tgz"
  sha256 "1723b6673c243734fd0eb880fe90c1ee7a45446876f7d2bf51665b9621f6eb37"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 "f8052ca617bf5fa7d156b081bbffc0efbc6f64c11ecc8b61589ef7cae9275247" => :catalina
    sha256 "f0fed55e8b7ec094148849cd7d2f1886127aced228876ed6f0db66873de7ff18" => :mojave
  end

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
