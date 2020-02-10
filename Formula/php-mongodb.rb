require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.7.1.tgz"
  sha256 "e4931b3545ba1facab1859c34774c280f37b91579555b2c44cb7e822e2396c53"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "048630870d09031a47918dec9651d95764a5af6eb83865ffa4bb1f8eaa6e79e3" => :catalina
    sha256 "5601abc9761dd01677bb2349345ecf5089b18ae9a3196beaa6b6f10a44404dc1" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
