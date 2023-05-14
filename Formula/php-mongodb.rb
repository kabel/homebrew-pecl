require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.15.3.tgz"
  sha256 "4f2c4e417fb606b462e870ec03656f3a97ba0b399dc24a6d9d153e9846134388"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "3fb1b2763ab99b75b5e5d2003e618739c118bbd441e880435aa4cdf12fc03e3f"
    sha256 cellar: :any, monterey: "1ae308c38c11db80a05c0b25ad703bd2b6e5795f55fa0f03d453fcb7d6051c70"
    sha256 cellar: :any, big_sur:  "9903b59cca87c0e19a3a3089719a94ede65a5ed4142294fd547ce35f5e2e9604"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
