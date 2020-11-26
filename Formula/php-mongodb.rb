require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.9.0.tgz"
  sha256 "1a9e7117b749c2dd63bd3493bf38c24a9acd11646ec96a0d92ba6380eee0ab9a"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "236fb34fd5e98446cc60f8c8b8531146ae62a9dbd8a4464159ba23ebc1d3ca14" => :catalina
    sha256 "5b88fc7a90d8239de140b33308d0f3ea6af8c0593e75aa09249a6463fafc6544" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
