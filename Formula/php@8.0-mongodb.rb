require_relative "../lib/php_pecl_formula"

class PhpAT80Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.15.0.tgz"
  sha256 "eeb6268d34bd0b4a3dcc60dde4e484f5cf4fa2439ca3d9f024c0000e99ee7240"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "c92cf3fa23812cc052731b993ccc143ade030d5836faaea2b64bbd2b2b35db95"
    sha256 cellar: :any, monterey: "f4e6955a1eaf72011fbe2131d6c74c7171a77ce7bb03caea3c5886a61cb67bbb"
    sha256 cellar: :any, big_sur:  "ad4defe682fbb427ba40d63601146fb105c120377f50767c33dbcf25c81d1992"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula

  depends_on "icu4c"
  depends_on "snappy"
end
