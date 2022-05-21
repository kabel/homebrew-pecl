require_relative "../lib/php_pecl_formula"

class PhpAT80Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.0.0.tgz"
  sha256 "caa67e972a8e0f50b920088434eea14671902f253fb5bfb854b7e8d3898bcd26"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "093c671ab586709e83381431901f5615c29d9dc59c1181d19496642490053c70"
    sha256 cellar: :any, big_sur:  "5bf263df0f951d39cac6a32cd55ee22f97ce8afddc0008eef34fa1934917af96"
    sha256 cellar: :any, catalina: "49552fad44f204ac74b7416cd1b1250d0077e7f218a109a8ac7b2155a4ce7c95"
  end

  depends_on "cmake" => :build
  depends_on "openssl@1.1"
end
