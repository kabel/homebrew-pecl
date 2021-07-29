require_relative "../lib/php_pecl_formula"

class PhpAT73Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-3.2.0.tgz"
  sha256 "7f4c9da9a468e922d5a4a283607d6e5a659888f49cd6a71743ac87265fb29ae7"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "fdb0393d27cdd873fdeeadc6b45ea85e2867defd603bcfc0a80d88ef50f746e9"
    sha256 catalina: "36669a0956ef6a68ce2718cdd09ec850cd2a38cde6bc886fa41dba434ae03952"
    sha256 mojave:   "3bb8ae0fa78832188137b7aafdc28aaee0e1aa9f166dbce13fb410fd60caeec9"
  end

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
