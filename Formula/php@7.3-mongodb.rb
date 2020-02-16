require_relative "../lib/php_pecl_formula"

class PhpAT73Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.7.2.tgz"
  sha256 "11e1c4d8d786ddc6b2fa32da487d53eb274ba9d41a08ba5a14938b3d43652b02"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "34c4be23ebda692d41391837f652f7c1fa6229bf84d96819534367d6599747cb" => :catalina
    sha256 "67d26fc34be10b380126eefb23505b6c075ab37db7f4d3e45c148f16af7a6b23" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
