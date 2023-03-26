require_relative "../lib/php_pecl_formula"

class PhpAT80Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.1.2.tgz"
  sha256 "c5d3109365a47a785ad21713a27cbb3da7205da506bc7bf255ea04fc14d835e2"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 ventura:  "029d27b884ecac9c340b9f38328d759c8a735e6008a8d0cc4fd668a9baf98e31"
    sha256 monterey: "9299dcbc9a28a7d098971c4a0fefd707a4bf30fc8c54f3b2f71b92c8e892fa95"
    sha256 big_sur:  "81a6c5b148991d13792b376a9a1300baf745752f8128784d44c9a8e1eafb909d"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula

  depends_on "cmake" => :build
  depends_on "openssl@1.1"
end
