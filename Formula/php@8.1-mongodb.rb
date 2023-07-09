require_relative "../lib/php_pecl_formula"

class PhpAT81Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.16.1.tgz"
  sha256 "2c5b7c7ccf6ca26d25af8487f4028390f0a7dc49efb2eb360a65840e1d6f566e"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "d79312c3f70108492ede53aa2c9e99f1707a855e893240deb299023a4a86994e"
    sha256 cellar: :any, monterey: "65fd8296a91c261b1bb61e2294800ddd6f58f655d5310e38f39f7dbb1c9b2779"
    sha256 cellar: :any, big_sur:  "043152d77387d29e08f75553991dad316ff35a88f0230a2fe56961ea57e39e01"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
