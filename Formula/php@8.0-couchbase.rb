require_relative "../lib/php_pecl_formula"

class PhpAT80Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.1.1.tgz"
  sha256 "861ba1c7c6b3d0247b26772a0ae951780f298f3cf4ff4edc9a8c3cb3998a4599"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "345e44b2f4f7c994de9fdc5447314e948f2eea800c2202e83327b8a7cc8b9769"
    sha256 cellar: :any, monterey: "827cb7025a6779d58839c9b0ed2fe8a2f80bca16b0f90324c8a0d5e366420a9a"
    sha256 cellar: :any, big_sur:  "c101c3a35104ab475af16a72a562f2963605cf1ca838f37c092b8afb95a92edc"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula

  depends_on "cmake" => :build
  depends_on "openssl@1.1"
end
