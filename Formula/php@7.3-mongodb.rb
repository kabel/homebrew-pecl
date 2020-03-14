require_relative "../lib/php_pecl_formula"

class PhpAT73Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.7.4.tgz"
  sha256 "1cec8be860d7d6cff05b075a0e0fc47b1d9f580ef6a0cd46948e455a88a6859a"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "9b28c27049995b53de04bb6eda0ca6fa646d679c3a04e596cbf7ccf4cc2df902" => :catalina
    sha256 "6386c4784f432a4cf4230df9070df32255c0261ea0632196b8b9a64700fa5f7f" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
