require_relative "../lib/php_pecl_formula"

class PhpAT73Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.7.3.tgz"
  sha256 "bbe8992f9b26815e51e7a0fccfe39340ee0702a0adbc06dc9c420e746ae61d2c"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "0ac78cbf55eca39303eb32194a430fe8d81afee181a28775cceb290bbb787ae6" => :catalina
    sha256 "4e61cfdb7dbe6808aa8928b79523a9cd8701f77749e0cf287730930f23910957" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
