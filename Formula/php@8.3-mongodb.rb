require_relative "../lib/php_pecl_formula"

class PhpAT83Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.21.0.tgz"
  sha256 "336506cfd52a878c29bf7e9fb99ff70054ab5efef19ab063c2d28e3889fdb557"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "34f51e9a4a7448b1a031ad1fdf726099fcd21782fc908ad85c8f0d063898fbb4"
    sha256 cellar: :any, ventura: "5be2aaa5db42c703ce93bc2f9395145d651b98b1aee798a355a383a50aa7c9e1"
  end

  deprecate! date: "2027-12-31", because: :unsupported

  depends_on "icu4c"
  depends_on "openssl@3"
  depends_on "snappy"
  depends_on "zstd"
end
