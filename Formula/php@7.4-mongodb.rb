require_relative "../lib/php_pecl_formula"

class PhpAT74Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.11.1.tgz"
  sha256 "838a5050de50d51f959026bd8cec7349d8af37058c0fe07295a0bc960a82d7ef"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "0cd917e633fe1bd842118a7642da471d766a0111ff7d566a51edf0ca5bc29b1a"
    sha256 catalina: "3dc066abaa4d98eb35dc5cdf1b818cb57203016059c89248bda82e1fd3f2a65c"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
