require_relative "../lib/php_pecl_formula"

class PhpAT81Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.1.2.tgz"
  sha256 "c5d3109365a47a785ad21713a27cbb3da7205da506bc7bf255ea04fc14d835e2"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "434f5fc06a88fdb7df3e51ea4377ac85e1df26967134e14968685678dacc2bba"
    sha256 cellar: :any, monterey: "26902dc13c979de1a8c869585ac4659a686df7bfc4992c8ad6b56b6b78bba1ff"
    sha256 cellar: :any, big_sur:  "d9d5fceef53174577bdd9c78e5adfc0d2f96682d7a154924fa3b8ce90ed58618"
  end

  depends_on "cmake" => :build
  depends_on "openssl@1.1"
end
