require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.7.2.tgz"
  sha256 "11e1c4d8d786ddc6b2fa32da487d53eb274ba9d41a08ba5a14938b3d43652b02"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "048630870d09031a47918dec9651d95764a5af6eb83865ffa4bb1f8eaa6e79e3" => :catalina
    sha256 "5601abc9761dd01677bb2349345ecf5089b18ae9a3196beaa6b6f10a44404dc1" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
