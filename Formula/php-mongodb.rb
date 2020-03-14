require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.7.4.tgz"
  sha256 "1cec8be860d7d6cff05b075a0e0fc47b1d9f580ef6a0cd46948e455a88a6859a"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "9d1a88154be0d1e9a9e19d5eff6e51d96ff1d611e28d4a29c8d954a2f950202f" => :catalina
    sha256 "916d44432992f16c638d2c659da363ea467c45e7d641609b77d6382e0dec0a92" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
