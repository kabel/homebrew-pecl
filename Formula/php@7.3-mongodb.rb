require_relative "../lib/php_pecl_formula"

class PhpAT73Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.7.4.tgz"
  sha256 "1cec8be860d7d6cff05b075a0e0fc47b1d9f580ef6a0cd46948e455a88a6859a"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "0ac78cbf55eca39303eb32194a430fe8d81afee181a28775cceb290bbb787ae6" => :catalina
    sha256 "4e61cfdb7dbe6808aa8928b79523a9cd8701f77749e0cf287730930f23910957" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
