require_relative "../lib/php_pecl_formula"

class PhpAT81Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.1.0.tgz"
  sha256 "3f027727615848da928df347bf1cbe7a867f8a362b56eefe8b2457795f8b4492"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "94cd76362c8fc19f493bfc4f890f4df634a207665cd027e8ea8d4b638ab0c085"
    sha256 cellar: :any, monterey: "4f6a0f3040d080c1e02ec4889e04b67a4f208ab25d33db3d0f0b51434a1bd829"
    sha256 cellar: :any, big_sur:  "356ecdb783f51efd9d3e539752ba730424cb112527b8e86c5316ad376870ab70"
  end

  depends_on "cmake" => :build
  depends_on "openssl@1.1"
end
