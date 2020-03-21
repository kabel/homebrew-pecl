require_relative "../lib/php_pecl_formula"

class PhpAT73Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.2.1.tgz"
  sha256 "c05af6254d704844303fbe8b13b2d54bdb4372b1a081934e67cac42ec79ecbbe"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "2ff074df1ace3ccb48ab2eba3475ab68e70f168679b40100948d648952ff7132" => :catalina
    sha256 "0238314bb3cb11ada84dd68850b7677b65df62ebd65a8e1c6c59fa9158139cca" => :mojave
  end
end
