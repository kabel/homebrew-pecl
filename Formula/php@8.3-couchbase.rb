require_relative "../lib/php_pecl_formula"

class PhpAT83Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.3.0.tgz"
  sha256 "7a82e55384c1a27fcfb46802164ff60bf61f7199dc42719bc0ce6a5ccf9922c9"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "a3ed02bad3fd1ea4674907f2e57c53422f0df93770d1ab53c203b40ffbb404c3"
    sha256 cellar: :any, ventura: "01633aaca85cbad674c4540aa6db4edf3c610828ac4e105ad5e9bdf1c9aad582"
  end

  deprecate! date: "2027-12-31", because: :unsupported

  depends_on "cmake" => :build
  depends_on "openssl@3"

  def install
    ENV["CMAKE_POLICY_VERSION_MINIMUM"] = "3.5"
    super
  end
end
