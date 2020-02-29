require_relative "../lib/php_pecl_formula"

class PhpAT72Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.7.3.tgz"
  sha256 "bbe8992f9b26815e51e7a0fccfe39340ee0702a0adbc06dc9c420e746ae61d2c"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "f7d6f46f18a03ad228fff3872f3fc01dc85f9415faa35d5dc795b624db87c039" => :catalina
    sha256 "b4029b7815d51c13c7a2da2aa34f7320261f985e29b397759a96f0603309147d" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
