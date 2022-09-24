require_relative "../lib/php_pecl_formula"

class PhpAT74Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.14.1.tgz"
  sha256 "bae2a876fdcc13d6cd0139fb5b2aefd51c9d5c84a6a4fc53bebdbe3f162d835e"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "093cc986d695bba3d5d59f4bb5c1ba0449bf9a7ffca156bd976676f46fda191a"
    sha256 cellar: :any, big_sur:  "0177ca969bcb0cc5c5099dbb41b595076e94f985de84b2128e0e2b0597c02f83"
    sha256 cellar: :any, catalina: "2c428d97fef3551379c2e94a299526f41d9c7f2b811c6642b550fe3dd29c52bd"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
