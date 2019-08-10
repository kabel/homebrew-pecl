require_relative "../lib/php_pecl_formula"

class PhpAT71Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-2.6.1.tgz"
  sha256 "e977a08f4b6b75eb7a903e76c069ad3a12f19a7ea1b0c4da8b04c1c3cc7a5743"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "a02cd6e041056530d0d8c303b7782e3c17b01e37bd0cf79fad9f3ad094114b17" => :mojave
    sha256 "e25d01f8553a8f07ba80764cc0231bf0fab3c62b36e35ea06bf1ad610c2f33ec" => :high_sierra
  end

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
