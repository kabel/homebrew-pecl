require_relative "../lib/php_pecl_formula"

class PhpAT81Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.1.2.tgz"
  sha256 "c5d3109365a47a785ad21713a27cbb3da7205da506bc7bf255ea04fc14d835e2"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 ventura:  "4c03b5e206a83b8bd0d7eca766caca7bd925405f689d964cd46d7b5e8da51e23"
    sha256 monterey: "4aa8a39035f6bee142ac53a596c1545348e2bf4e5c79631ea86df3a050e76a92"
    sha256 big_sur:  "2ba3905e261182b02a9d27cfbeb6ccfcd20fb4ee179e844f99c1705bd51f6487"
  end

  depends_on "cmake" => :build
  depends_on "openssl@1.1"
end
