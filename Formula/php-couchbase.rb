require_relative "../lib/php_pecl_formula"

class PhpCouchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.1.1.tgz"
  sha256 "861ba1c7c6b3d0247b26772a0ae951780f298f3cf4ff4edc9a8c3cb3998a4599"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "62a0654f3d0c26e13fd9a4ab0f833722d31dcc940f6cff6065bf218d8768ca98"
    sha256 cellar: :any, monterey: "c2a8cc46b4e874f0218690b88460532ac1e441646d4f789336c798a124a1dc5e"
    sha256 cellar: :any, big_sur:  "8b146dbee8c4db55576918c6d6992aa81e65f90d1753f67ace26d9a44c67fb6f"
  end

  depends_on "cmake" => :build
  depends_on "openssl@1.1"
end
