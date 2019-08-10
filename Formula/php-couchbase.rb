require_relative "../lib/php_pecl_formula"

class PhpCouchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-2.6.1.tgz"
  sha256 "e977a08f4b6b75eb7a903e76c069ad3a12f19a7ea1b0c4da8b04c1c3cc7a5743"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "a3e4173b17321cb6dff9511cc5ca870c06faeda25943eb8705722f3d98835b96" => :mojave
    sha256 "213a6795fc958737e4ea357af831af46e67958ec5e7d73e231647fd04cce29ff" => :high_sierra
  end

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
