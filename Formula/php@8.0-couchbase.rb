require_relative "../lib/php_pecl_formula"

class PhpAT80Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-3.2.1.tgz"
  sha256 "409faf0903fbc9d2e46952fe6d31e22415c51ee6f8d3aea5095c5415d58e18b4"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "ec2dce3133f991d92cd9256e86711543ea5cd4fd28917638d44f918f09820545"
    sha256 catalina: "06019ec9a77e31386fb287c2c4d1e677c0bc7a870896fe3705a5cac350d423b4"
  end

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
