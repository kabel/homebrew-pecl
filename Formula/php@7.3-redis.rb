require_relative "../lib/php_pecl_formula"

class PhpAT73Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.2.2.tgz"
  sha256 "9965269ec8da48761873e943b770d7053e7579b2b858af97e582eadc7e6eaa11"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "2ff074df1ace3ccb48ab2eba3475ab68e70f168679b40100948d648952ff7132" => :catalina
    sha256 "0238314bb3cb11ada84dd68850b7677b65df62ebd65a8e1c6c59fa9158139cca" => :mojave
  end
end
