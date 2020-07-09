require_relative "../lib/php_pecl_formula"

class PhpAT72Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.7.5.tgz"
  sha256 "e48a07618c0ae8be628299991b5f481861c891a22544a2365a63361cc181c379"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "f4dec197175b12c40cab40f1b9d77c855a75b8a71cf69eaf96196cde3b29d002" => :catalina
    sha256 "bd6269d24667f2fcda5cee14cce8a0c115cf5892f314ef2cb04504ca75e3880d" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
