require_relative "../lib/php_pecl_formula"

class PhpCouchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-3.1.1.tgz"
  sha256 "1723b6673c243734fd0eb880fe90c1ee7a45446876f7d2bf51665b9621f6eb37"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "679072e4f8b940c13b89f8315535670254707d375934a41c0915f9b5a65def8a"
    sha256 catalina: "e9c88e91a9cdb67db24eba2869ce696e91aefc987fab243f37a84ed37c934080"
    sha256 mojave:   "13f25afa4fd775071cebeb54d3e7f67c89e1dacf52fafc06704d2c625ca6922f"
  end

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
