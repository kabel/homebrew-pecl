require_relative "../lib/php_pecl_formula"

class PhpAT73Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-3.1.0.tgz"
  sha256 "abdc6f1315c76d77a1e22f229400c06eefbc305b1aee26d20815343798b6b828"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "efc79168f4071605fd27e2eb30da78f1b96c269aa46dbcffd2f2eb79aa8dfab3" => :catalina
    sha256 "a305f4760f5ffb3223888f9eb911efc0ca7073437e1cce4f03f4dd04d52456a0" => :mojave
  end

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
