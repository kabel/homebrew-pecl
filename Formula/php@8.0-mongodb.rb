require_relative "../lib/php_pecl_formula"

class PhpAT80Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.15.3.tgz"
  sha256 "4f2c4e417fb606b462e870ec03656f3a97ba0b399dc24a6d9d153e9846134388"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "f204bcf212ac4a5a4b8df46bc67598b8d14844fccf99b44bfafd10be0b3a0619"
    sha256 cellar: :any, monterey: "f3d58f69a6af457b66249645e373eea7c856e97a1235352e905a221e40e4327a"
    sha256 cellar: :any, big_sur:  "326942b1c7a1c23d026a956f54e762ae14e9c84e5bbc14ce0baee9454a01b75e"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula

  depends_on "icu4c"
  depends_on "snappy"
end
