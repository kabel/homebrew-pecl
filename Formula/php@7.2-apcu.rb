require_relative "../lib/php_pecl_formula"

class PhpAT72Apcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.18.tgz"
  sha256 "d46debe7acad6073b663ba1710c5cac671a60bf666966cf199bf6d07499bde2b"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "533f584359e25854b882e8aee01869f8cac1c4c40c7ec104128bdc955d9192a0" => :mojave
    sha256 "da4b2c69fb469b3ff52361fe6b5c2dbca6819896c15fd9e1dab271293880d489" => :high_sierra
  end
end
