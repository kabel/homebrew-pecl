require_relative "../lib/php_pecl_formula"

class PhpCouchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-3.2.1.tgz"
  sha256 "409faf0903fbc9d2e46952fe6d31e22415c51ee6f8d3aea5095c5415d58e18b4"
  revision 1
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "cef929f5d5c3a6a0e99209e106359bbd8b9c26d4973be031df3ccc992efc05d8"
    sha256 catalina: "99f48fb6bbb6bd91f5b8458d931d4b1da12893f02c450b13ff29c3ae8dafc431"
  end

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
