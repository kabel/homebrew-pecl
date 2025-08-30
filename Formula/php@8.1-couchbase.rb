require_relative "../lib/php_pecl_formula"

class PhpAT81Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.3.0.tgz"
  sha256 "7a82e55384c1a27fcfb46802164ff60bf61f7199dc42719bc0ce6a5ccf9922c9"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "4e868f52305c8156629d54fcb821e0b9bcedfa6934c51a2da319f25ed4a12dec"
    sha256 cellar: :any, ventura: "9e4242f980bce9b868d7a205b70f90876c3cf48742d8ee023064575ccd0c202c"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  depends_on "cmake" => :build
  depends_on "openssl@3"

  def install
    ENV["CMAKE_POLICY_VERSION_MINIMUM"] = "3.5"
    super
  end
end
