require_relative "../lib/php_pecl_formula"

class PhpAT74Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-3.1.0.tgz"
  sha256 "abdc6f1315c76d77a1e22f229400c06eefbc305b1aee26d20815343798b6b828"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "09acfc30313b0c3cff07f309ac3ee7f2a7b5026e0477d42b2691eb33b6975afa" => :catalina
    sha256 "ca91dd9e6c12393e54e00813b83045e56ef568b50cf23d3d9b4a7023098be914" => :mojave
  end

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
