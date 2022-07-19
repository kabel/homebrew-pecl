require_relative "../lib/php_pecl_formula"

class PhpAT74Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.14.0.tgz"
  sha256 "55775e69207a7f9c43c62883220f3bc600d3e3f663af50000be70ad3ee51818e"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "3816a67fa3d6902c51c003f70042dc8031f4eabead82aa9e9f5654537daede1c"
    sha256 cellar: :any, big_sur:  "3ad9463afd3d2280ca63374a18636cbeb2942bbab37544f51d3fac72d2223fde"
    sha256 cellar: :any, catalina: "da438da42885852ad61060552b2c8281abace3fab9952e19d95347724780a88a"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
