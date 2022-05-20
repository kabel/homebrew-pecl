require_relative "../lib/php_pecl_formula"

class PhpCouchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.0.0.tgz"
  sha256 "caa67e972a8e0f50b920088434eea14671902f253fb5bfb854b7e8d3898bcd26"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "5e3a20302f5e3f1b323ce255cab7ab09f0cfb384058966560a82c5db45ba5e88"
    sha256 cellar: :any, big_sur:  "764417727b2bdf3190c64867a93b55c3a144d52bda74087aff5dcb8e28720685"
    sha256 cellar: :any, catalina: "8619c0758d22daf1494f7991e068fb39c73f289f3d31fed542a1da3dda42f4a0"
  end

  depends_on "cmake" => :build
  depends_on "openssl@1.1"
end
