require_relative "../lib/php_pecl_formula"

class PhpAT74Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.0.0.tgz"
  sha256 "caa67e972a8e0f50b920088434eea14671902f253fb5bfb854b7e8d3898bcd26"
  revision 1
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "a4edf9a7df31b141c37c1b41d1b7ea3acdca456e770c9335e5acd14c7975791e"
    sha256 cellar: :any, big_sur:  "a91969ae27d21d03e5747dbbd943f62992fbdaf5f762497fb4adb61297540e2b"
    sha256 cellar: :any, catalina: "e649cbadd2f18273aad4521a189effca597de24e150919f51b2a1daab9246c3a"
  end

  depends_on "cmake" => :build
  depends_on "openssl@1.1"
end
