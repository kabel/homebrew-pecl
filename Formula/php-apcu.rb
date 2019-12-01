require_relative "../lib/php_pecl_formula"

class PhpApcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.18.tgz"
  sha256 "d46debe7acad6073b663ba1710c5cac671a60bf666966cf199bf6d07499bde2b"
  revision 1

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "964e5ae322fc577f3736318d972956145a6b43a228b4d930be7f5e39759a6661" => :mojave
    sha256 "d8393b80f248bf97604ec59bfd9e24ee7e44704aa1ba5cde2b2848c8b20177c9" => :high_sierra
  end
end
