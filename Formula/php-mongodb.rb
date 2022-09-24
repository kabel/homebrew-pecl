require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.14.1.tgz"
  sha256 "bae2a876fdcc13d6cd0139fb5b2aefd51c9d5c84a6a4fc53bebdbe3f162d835e"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "972b83f765f7f0500323820949656546ff7434d2b8dc11f0ab7eb3d686c2b500"
    sha256 cellar: :any, big_sur:  "53e31ed51e77335049512b10b4c50569937ce18d36a55080d5a75e9f2f8aaa9f"
    sha256 cellar: :any, catalina: "dfc55bc29abb73da3720f58b058f86fef923b8b6a088756f0484fb9733a8ad3b"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
