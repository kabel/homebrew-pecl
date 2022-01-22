require_relative "../lib/php_pecl_formula"

class PhpAT74Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.12.0.tgz"
  sha256 "0d9f670b021288bb6c9b060979f191f1da773d729100673166f38b617e24317e"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "0cd917e633fe1bd842118a7642da471d766a0111ff7d566a51edf0ca5bc29b1a"
    sha256 catalina: "3dc066abaa4d98eb35dc5cdf1b818cb57203016059c89248bda82e1fd3f2a65c"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
