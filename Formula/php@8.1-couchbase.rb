require_relative "../lib/php_pecl_formula"

class PhpAT81Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.1.4.tgz"
  sha256 "80ba7dbabb7f7a275907507186ecb27b559e64082a22ba1ad39cdd129d383ce5"
  revision 1
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 ventura:  "195f6b244e55174ed1d1d80e78e2b90339fbad305c91e8e38fcaf207c084db2e"
    sha256 monterey: "0a2bf7177080221e04258978d531e5423cc3eddd151497f79135064f63508a7c"
    sha256 big_sur:  "f5ea1dd43f3016bffca228170b7f79645170c46e78fad423c803ff64d53e12db"
  end

  deprecate! date: "2024-11-25", because: :unsupported

  depends_on "cmake" => :build
  depends_on "openssl@3"
end
