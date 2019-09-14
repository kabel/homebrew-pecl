require_relative "../lib/php_pecl_formula"

class PhpAT72Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.6.0.tgz"
  sha256 "8686639a5172a8bef01f3991c99eb8e62f4e256fa82da9ac5fc6ec60b474cb2f"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "c90d78628a230bfd0e84e68e711e66b8a86cf6b881fd1bf5e2d567ac0d12d289" => :mojave
    sha256 "ee4f0b9938e0c5a7e01de1d6e39c30ca2a8166c75cf9e5fbc9420edc9b438c81" => :high_sierra
  end

  depends_on "icu4c"
  depends_on "snappy"
end
