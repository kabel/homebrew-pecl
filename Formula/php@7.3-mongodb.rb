require_relative "../lib/php_pecl_formula"

class PhpAT73Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.6.1.tgz"
  sha256 "1560141933a36862ee4d65171d2cc371c9fd468f59f3bef94cf2903186253cc8"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "4fbad9dbbb2776450e6312ce27b9342b4bd0fb7f12db02181d2e8f61855cbaeb" => :mojave
    sha256 "22bdbdeceb87ee1edcc1749828fa8ca71b93c859921e7584d6c7d4e00a2b67e7" => :high_sierra
  end

  depends_on "icu4c"
  depends_on "snappy"
end
