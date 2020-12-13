require_relative "../lib/php_pecl_formula"

class PhpAT73Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-3.0.5.tgz"
  sha256 "74a98751249fa0215d6496312adbb80437b216d07723ea9ba90d96dcb09b3811"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "55b0879cd7742bf1f42c7cafc4260ef9c3d5462a1d1ccdb65676d529accc4dca" => :catalina
    sha256 "a8facd05a8dc07166a84163b8a9f973561b47752680734021db26eea19c5ba87" => :mojave
  end

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
