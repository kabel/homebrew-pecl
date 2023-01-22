require_relative "../lib/php_pecl_formula"

class PhpCouchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.1.0.tgz"
  sha256 "3f027727615848da928df347bf1cbe7a867f8a362b56eefe8b2457795f8b4492"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "e87e327b7a7d2e917e0d999367ff2cb25a89ce02e617c4db9078b5ef57497d69"
    sha256 cellar: :any, monterey: "3b88e458004522feb4cd7907175164fbb9b077ac453ebba9b2c6fa82c2ae726a"
    sha256 cellar: :any, big_sur:  "fef11fb61c0058c15f0dbf25acde58b76caff9c0e2008fb3a38cb447fbcec17b"
  end

  depends_on "cmake" => :build
  depends_on "openssl@1.1"
end
