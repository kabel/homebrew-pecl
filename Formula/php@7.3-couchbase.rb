require_relative "../lib/php_pecl_formula"

class PhpAT73Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-3.0.5.tgz"
  sha256 "74a98751249fa0215d6496312adbb80437b216d07723ea9ba90d96dcb09b3811"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "efc79168f4071605fd27e2eb30da78f1b96c269aa46dbcffd2f2eb79aa8dfab3" => :catalina
    sha256 "a305f4760f5ffb3223888f9eb911efc0ca7073437e1cce4f03f4dd04d52456a0" => :mojave
  end

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
