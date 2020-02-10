require_relative "../lib/php_pecl_formula"

class PhpAT72Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.7.1.tgz"
  sha256 "e4931b3545ba1facab1859c34774c280f37b91579555b2c44cb7e822e2396c53"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "f3662a9c43b2578cc4ee36b9ce123b1d98770edb7427f94387d7702c901c076e" => :catalina
    sha256 "e746dcf0226f771f0015ba17f8b14f3af363add437cce8982cbc2d6c696b4f5e" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
