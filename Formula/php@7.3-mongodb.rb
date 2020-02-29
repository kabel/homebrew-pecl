require_relative "../lib/php_pecl_formula"

class PhpAT73Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.7.3.tgz"
  sha256 "bbe8992f9b26815e51e7a0fccfe39340ee0702a0adbc06dc9c420e746ae61d2c"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "34c4be23ebda692d41391837f652f7c1fa6229bf84d96819534367d6599747cb" => :catalina
    sha256 "67d26fc34be10b380126eefb23505b6c075ab37db7f4d3e45c148f16af7a6b23" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
