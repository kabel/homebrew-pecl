require_relative "../lib/php_pecl_formula"

class PhpAT82Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.1.4.tgz"
  sha256 "80ba7dbabb7f7a275907507186ecb27b559e64082a22ba1ad39cdd129d383ce5"
  license "Apache-2.0"

  deprecate! date: "2025-12-08", because: :unsupported

  depends_on "cmake" => :build
  depends_on "openssl@3"
end
