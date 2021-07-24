require_relative "../lib/php_pecl_formula"

class PhpAT74Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.10.0.tgz"
  sha256 "8033dce1a5a5139a4bda690c15c2c98beb18c996429da6a17796dd0c4fc26a73"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "c70ab38f7baa1c1debc91b5ddde04627446e1688903b85ea27fd5054672bbcbe"
    sha256 catalina: "eec8f8e22fbb230b7917163575e9a3cf0a56d3529d3b0cf09be9c5223d4c2214"
    sha256 mojave:   "db2b0b2494e6fe7942f3f79bf2bdebb92dd83c35a46d4193cbc3e3b0ccea3135"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
