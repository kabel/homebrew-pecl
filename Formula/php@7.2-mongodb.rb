require_relative "../lib/php_pecl_formula"

class PhpAT72Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.7.2.tgz"
  sha256 "11e1c4d8d786ddc6b2fa32da487d53eb274ba9d41a08ba5a14938b3d43652b02"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "f7d6f46f18a03ad228fff3872f3fc01dc85f9415faa35d5dc795b624db87c039" => :catalina
    sha256 "b4029b7815d51c13c7a2da2aa34f7320261f985e29b397759a96f0603309147d" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
