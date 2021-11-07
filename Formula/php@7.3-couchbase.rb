require_relative "../lib/php_pecl_formula"

class PhpAT73Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-3.2.1.tgz"
  sha256 "409faf0903fbc9d2e46952fe6d31e22415c51ee6f8d3aea5095c5415d58e18b4"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "b6f503a18cd5bf709432e8d99379e55873655370ec9265c325a25d6e1f07492d"
    sha256 catalina: "f7491257c296677a7a92d2949cfd9fb3da4d456c401f0dde4bbdef73eb8e8361"
  end

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
