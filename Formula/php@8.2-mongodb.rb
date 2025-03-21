require_relative "../lib/php_pecl_formula"

class PhpAT82Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.21.0.tgz"
  sha256 "336506cfd52a878c29bf7e9fb99ff70054ab5efef19ab063c2d28e3889fdb557"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "aa2e308f57bf6ec01c37b4b3f9ec305a821ed4c9c27c138c4c33988d319ba1db"
    sha256 cellar: :any, ventura: "aac783908abf398d5cf8b5f50b882a142352fc0ba4315472bcbcd69a744e68a9"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  depends_on "icu4c"
  depends_on "openssl@3"
  depends_on "snappy"
  depends_on "zstd"
end
