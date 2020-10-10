require_relative "../lib/php_pecl_formula"

class PhpAT72Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.8.1.tgz"
  sha256 "d42f85a74ed89062c0f27a1c1bc8c383f5401e239cbff40c09df1e7602a5b977"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "d5381f576b824811a5d56ac4dc663963c8803cfb90cc34ffbbb985fc34a953ee" => :catalina
    sha256 "b52d52b51f3139f42e340575c4d72cfedea7874dacbac8749af7e490c256a23c" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
