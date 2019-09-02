require_relative "../lib/php_pecl_formula"

class PhpAT72Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.5.5.tgz"
  sha256 "a6da3985dd772e3b6c8dde38aa18f3480fba973aaaa41bd4ceb2c6c9c7e4fe3e"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "c90d78628a230bfd0e84e68e711e66b8a86cf6b881fd1bf5e2d567ac0d12d289" => :mojave
    sha256 "ee4f0b9938e0c5a7e01de1d6e39c30ca2a8166c75cf9e5fbc9420edc9b438c81" => :high_sierra
  end

  devel do
    url "https://pecl.php.net/get/mongodb-1.6.0alpha3.tgz"
    sha256 "7d0eaa01488555d6f24b92d3eafbdf842905c101453d878307405babe894ce72"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
