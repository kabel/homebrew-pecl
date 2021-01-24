require_relative "../lib/php_pecl_formula"

class PhpCouchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-3.1.0.tgz"
  sha256 "abdc6f1315c76d77a1e22f229400c06eefbc305b1aee26d20815343798b6b828"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "a7ce35e15b3f0c4927a5c47bd95691a930738451742c88b5ba88e55220405180" => :catalina
    sha256 "615c0336ea364e6bad023ace4b1ede5518b66d67472c398b38241ab37b32b28b" => :mojave
  end

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
