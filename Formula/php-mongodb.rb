require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.21.0.tgz"
  sha256 "336506cfd52a878c29bf7e9fb99ff70054ab5efef19ab063c2d28e3889fdb557"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "0f9f6cacc3d3a07e1cbf5162886b111376c14acccf9da7fbbac339d90ded69a8"
    sha256 cellar: :any, ventura: "7172def5b3d0e0887999574c192a618e0ab40e8ccd48028c9a9a52c4213aa5b3"
  end

  depends_on "icu4c"
  depends_on "openssl@3"
  depends_on "snappy"
  depends_on "zstd"
end
