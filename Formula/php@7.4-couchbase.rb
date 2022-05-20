require_relative "../lib/php_pecl_formula"

class PhpAT74Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.0.0.tgz"
  sha256 "caa67e972a8e0f50b920088434eea14671902f253fb5bfb854b7e8d3898bcd26"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "935607b71955aab4ce28ae1ca700e70394dba3c938518fb7a633a777c14ffc8b"
    sha256 cellar: :any, big_sur:  "afe289a435dc657b3cdacbf8deb63b5ff4eb67becded9def3412c6827064364e"
    sha256 cellar: :any, catalina: "fd27a979246b951a3165822b41a8fa7201649ee15ed8d672cfd9b95847de8ab0"
  end

  depends_on "cmake" => :build
  depends_on "openssl@1.1"
end
