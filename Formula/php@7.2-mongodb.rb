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
    url "https://pecl.php.net/get/mongodb-1.6.0alpha2.tgz"
    sha256 "281e69e4ba4a1bff8b1f586891f87c6ceeace50bb317776e6d2c942c8b0caa05"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
