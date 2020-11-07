require_relative "../lib/php_pecl_formula"

class PhpAT72Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.8.2.tgz"
  sha256 "fcef8d5ab1694ad79e5d7d6159378e2bc4d5ee573835384fb3095e0204008306"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "d5381f576b824811a5d56ac4dc663963c8803cfb90cc34ffbbb985fc34a953ee" => :catalina
    sha256 "b52d52b51f3139f42e340575c4d72cfedea7874dacbac8749af7e490c256a23c" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
