require_relative "../lib/php_pecl_formula"

class PhpApcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.18.tgz"
  sha256 "d46debe7acad6073b663ba1710c5cac671a60bf666966cf199bf6d07499bde2b"
  license "PHP-3.01"
  revision 1

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "4c09114de4f4f98e5163ca8410c24aa022c87c11db39e0904f00145fe7c2b20c" => :mojave
    sha256 "c6d8ec669db0b618483de74eb9dfc1e4b6a1fd75d6f1bd73d2e1f23514fd34da" => :high_sierra
  end
end
