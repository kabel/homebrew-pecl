require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.8.1.tgz"
  sha256 "d42f85a74ed89062c0f27a1c1bc8c383f5401e239cbff40c09df1e7602a5b977"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "96a5b7e7959ec65fbf6fb5643da92117766394ff3c5f32a4e583e96c05d6e894" => :catalina
    sha256 "edbf00a0db9180c8cadc31b75e70b3912b7db82236109f519a1ef6d21db360cd" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
