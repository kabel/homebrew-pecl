require_relative "../lib/php_pecl_formula"

class PhpAT74Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.13.0.tgz"
  sha256 "22865b61d264c90c9eaa85d94f2f5f57e564140cad87c8c2601fa33f80efe0bb"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, big_sur:  "3ad9463afd3d2280ca63374a18636cbeb2942bbab37544f51d3fac72d2223fde"
    sha256 cellar: :any, catalina: "da438da42885852ad61060552b2c8281abace3fab9952e19d95347724780a88a"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
