require_relative "../lib/php_pecl_formula"

class PhpAT73Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.8.1.tgz"
  sha256 "d42f85a74ed89062c0f27a1c1bc8c383f5401e239cbff40c09df1e7602a5b977"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "3a04e4bd5056ccb28b2d5c6ee1d08f1fdd24c3e9de0cae5226ac598497c96899" => :catalina
    sha256 "0ae6232c571aed408bbeef051b8eedd41ca87bea699e93493a4dc1324d5f900e" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
