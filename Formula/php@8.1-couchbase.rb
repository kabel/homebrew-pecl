require_relative "../lib/php_pecl_formula"

class PhpAT81Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.0.0.tgz"
  sha256 "caa67e972a8e0f50b920088434eea14671902f253fb5bfb854b7e8d3898bcd26"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "340d02c225f246cb921f5a8c5a70162a2d4f593e258249840c45149e51f46b90"
    sha256 cellar: :any, monterey: "a9dbaae7ed07b9447d684a65b3b19b14e4474e29a324172874a7158bb28fa167"
    sha256 cellar: :any, big_sur:  "daba248f8c32dd98271566e00ec40917f0cd12c000c628eac26c97a12b523d6c"
  end

  depends_on "cmake" => :build
  depends_on "openssl@1.1"
end
