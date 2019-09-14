require_relative "../lib/php_pecl_formula"

class PhpAT71Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.6.0.tgz"
  sha256 "8686639a5172a8bef01f3991c99eb8e62f4e256fa82da9ac5fc6ec60b474cb2f"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "86ca7beb7ac74f5a2adc7bf641da770bfebea817ed0abad1c666c361a824bc69" => :mojave
    sha256 "c597474fac7b9818bb8bfd87dabf69a6e1178cec5b36e716ba244dabeedaa4ee" => :high_sierra
  end

  depends_on "icu4c"
  depends_on "snappy"
end
