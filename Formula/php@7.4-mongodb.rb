require_relative "../lib/php_pecl_formula"

class PhpAT74Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.11.1.tgz"
  sha256 "838a5050de50d51f959026bd8cec7349d8af37058c0fe07295a0bc960a82d7ef"
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
