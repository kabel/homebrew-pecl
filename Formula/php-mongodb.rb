require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.6.0.tgz"
  sha256 "8686639a5172a8bef01f3991c99eb8e62f4e256fa82da9ac5fc6ec60b474cb2f"
  revision 1

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "e924964c7b3e14ac39fe43adaefef3d84aac7ca67b1d34bd773b3d6fdae982a2" => :mojave
    sha256 "2a460c500f48d98334e1e7bac76da2f26c7d667383591701c82937890441d62f" => :high_sierra
  end

  depends_on "icu4c"
  depends_on "snappy"
end
