require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.10.0.tgz"
  sha256 "8033dce1a5a5139a4bda690c15c2c98beb18c996429da6a17796dd0c4fc26a73"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "4084aaad5080ae1bf19c48f49ef85b9138da0003b0f6f9ee26102519f387759e"
    sha256 catalina: "2e2e0236b998bf09e355ae18b14a94c56c899f47d1432d78a4c22890fc828b33"
    sha256 mojave:   "34b1aa8ac9da6ae23a8517d352211cae1b5be5eec23b797e4d94dc45ffd01a35"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
