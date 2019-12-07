require_relative "../lib/php_pecl_formula"

class PhpAT73Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.6.1.tgz"
  sha256 "1560141933a36862ee4d65171d2cc371c9fd468f59f3bef94cf2903186253cc8"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "85c5407b2006e18bd56f8bd16c4b003d41782891727738869412fb324b3eb85f" => :mojave
    sha256 "7778e3f40510dafb0726f5109d739e7531eac21703a184b42120b4214a25d297" => :high_sierra
  end

  depends_on "icu4c"
  depends_on "snappy"
end
