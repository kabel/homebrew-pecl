require_relative "../lib/php_pecl_formula"

class PhpAT81Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.1.4.tgz"
  sha256 "80ba7dbabb7f7a275907507186ecb27b559e64082a22ba1ad39cdd129d383ce5"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 ventura:  "969fd3d2005f3690058c7c52c04184cacb37c56e5a790df7976d0369bba23acb"
    sha256 monterey: "5b63037a3afdc3f886eae92ad0b74a4533d23a66efbe241261f9008b163668ed"
    sha256 big_sur:  "2bace10c8fb8130c9f68767546ccc3fcb3c7138447bb02808948405e7bd5b4d6"
  end

  depends_on "cmake" => :build
  depends_on "openssl@1.1"
end
