require_relative "../lib/php_pecl_formula"

class PhpCouchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.0.0.tgz"
  sha256 "caa67e972a8e0f50b920088434eea14671902f253fb5bfb854b7e8d3898bcd26"
  revision 2
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "d179103601e00ae736cb78a6cc1cac4303537f85dd8c1a6651bedcea476845ff"
    sha256 cellar: :any, monterey: "457648ca117978e20b015f91bbc25bc1d897019aef930c4934131895066f093a"
    sha256 cellar: :any, big_sur:  "f93ebc8e62a4e15025a2df168bcbc101253359ca51eb50579eaf8cbb3b2e2559"
  end

  depends_on "cmake" => :build
  depends_on "openssl@1.1"
end
