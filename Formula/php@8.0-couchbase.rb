require_relative "../lib/php_pecl_formula"

class PhpAT80Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.0.0.tgz"
  sha256 "caa67e972a8e0f50b920088434eea14671902f253fb5bfb854b7e8d3898bcd26"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "b1f6906dac590bf90d1a563f088a4a4378fe5369d9f7651f5ac6b59bf9fd3b4a"
    sha256 cellar: :any, big_sur:  "0d9881eab7ccdee9fd61d4bb34ecd1b9d645eb49baa3459f341cfacf9fdf2f04"
    sha256 cellar: :any, catalina: "92c15f65273dcbf7bd6749915f74ccc2bad9b980c53f513049e2859aebd7d706"
  end

  depends_on "cmake" => :build
  depends_on "openssl@1.1"
end
