require_relative "../lib/php_pecl_formula"

class PhpAT72Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.6.1.tgz"
  sha256 "1560141933a36862ee4d65171d2cc371c9fd468f59f3bef94cf2903186253cc8"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "921453b52b05823804b1a181ee0bdb964e5ca2bdabd68a774c34872f56ffad7b" => :mojave
    sha256 "622cb97bba6753ac89a988aa1037e5e8b97781961d228efe2f2158987a82d515" => :high_sierra
  end

  depends_on "icu4c"
  depends_on "snappy"
end
