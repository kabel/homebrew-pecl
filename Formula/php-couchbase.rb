require_relative "../lib/php_pecl_formula"

class PhpCouchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.3.0.tgz"
  sha256 "7a82e55384c1a27fcfb46802164ff60bf61f7199dc42719bc0ce6a5ccf9922c9"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "5181fc58af11ea48f5c77f4bdb50f33a0b4b615eeaf4f4f14d94935d8cedc688"
    sha256 cellar: :any, ventura: "eff129737efaf34f86dba2475050cd004b369f4084c57858e24ea3d65c2d08d0"
  end

  depends_on "cmake" => :build
  depends_on "openssl@3"

  def install
    ENV["CMAKE_POLICY_VERSION_MINIMUM"] = "3.5"
    super
  end
end
