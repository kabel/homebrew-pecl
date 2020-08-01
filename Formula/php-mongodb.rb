require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.8.0.tgz"
  sha256 "096f02f240f1c7108dbbc9b4cd93e53e0517c8a85aaf99ac2fdd368f149a23b1"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "2f3557b614e1793563152cd353953b10e0fab9d6834962ea10c4f4319eb5810f" => :catalina
    sha256 "b41a35af62f6e5c7a66b5e8ad3e01eeae7e2be70a45c5ccc69c54dd462ca0e66" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
