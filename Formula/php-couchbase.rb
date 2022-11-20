require_relative "../lib/php_pecl_formula"

class PhpCouchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.0.0.tgz"
  sha256 "caa67e972a8e0f50b920088434eea14671902f253fb5bfb854b7e8d3898bcd26"
  revision 1
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "eb28e802a01233a880af7f46b289d7180c8f0b98528e9a251b5288da182c84e2"
    sha256 cellar: :any, big_sur:  "94173ef9d07ed91e95c5f47b96244bde3fc8d42a14d1df81157c92c43d5f5687"
    sha256 cellar: :any, catalina: "807ac12006d28c3339720071ffcd8a1cdfd94cfe2d9e492ee8a3992251d1dccb"
  end

  depends_on "cmake" => :build
  depends_on "openssl@1.1"
end
