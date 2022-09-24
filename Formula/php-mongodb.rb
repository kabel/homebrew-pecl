require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.14.1.tgz"
  sha256 "bae2a876fdcc13d6cd0139fb5b2aefd51c9d5c84a6a4fc53bebdbe3f162d835e"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "fb0ab43d45225b96fdf03fadbabfdd9f08096ce7676cdf8655d041235b7d7a53"
    sha256 cellar: :any, big_sur:  "c1f71b9e6eacbc76de53d4c0a6fc6ac03675cb87146e58e39d311346015b83c4"
    sha256 cellar: :any, catalina: "d46a6d774e8680cbff3d2929a0b6ae9670e2fbecebeab6a41c080f275c0eb98f"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
