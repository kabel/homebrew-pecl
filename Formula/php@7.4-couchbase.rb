require_relative "../lib/php_pecl_formula"

class PhpAT74Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-3.1.1.tgz"
  sha256 "1723b6673c243734fd0eb880fe90c1ee7a45446876f7d2bf51665b9621f6eb37"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "c94759e59c42bd3d0be2f0f528270c8f3d62d6965b74fe1010d0e9f4c12b4ba1"
    sha256 catalina: "fcc15e43ef8d3460f47476773b2acd000e660e5ce4d723cdd346f6f4a36a6e66"
    sha256 mojave:   "fd16e4c18193a63ade7dc5d81c97414a652e85e4ea63b71cb7cbf403b09b6fff"
  end

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
