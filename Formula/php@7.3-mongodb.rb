require_relative "../lib/php_pecl_formula"

class PhpAT73Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.7.1.tgz"
  sha256 "e4931b3545ba1facab1859c34774c280f37b91579555b2c44cb7e822e2396c53"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "85c5407b2006e18bd56f8bd16c4b003d41782891727738869412fb324b3eb85f" => :mojave
    sha256 "7778e3f40510dafb0726f5109d739e7531eac21703a184b42120b4214a25d297" => :high_sierra
  end

  depends_on "icu4c"
  depends_on "snappy"
end
