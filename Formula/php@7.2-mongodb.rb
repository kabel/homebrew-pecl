require_relative "../lib/php_pecl_formula"

class PhpAT72Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.8.1.tgz"
  sha256 "d42f85a74ed89062c0f27a1c1bc8c383f5401e239cbff40c09df1e7602a5b977"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "990313f8464fc8d065bced14a40f0c53ef06913b615159653b784d81f4b9459e" => :catalina
    sha256 "d0ec5ea616ade003c13fc13d7845cea3dc98b59c0a3ae02443fed94ac48e59cc" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
