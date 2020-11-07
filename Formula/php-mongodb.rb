require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.8.2.tgz"
  sha256 "fcef8d5ab1694ad79e5d7d6159378e2bc4d5ee573835384fb3095e0204008306"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "96a5b7e7959ec65fbf6fb5643da92117766394ff3c5f32a4e583e96c05d6e894" => :catalina
    sha256 "edbf00a0db9180c8cadc31b75e70b3912b7db82236109f519a1ef6d21db360cd" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
