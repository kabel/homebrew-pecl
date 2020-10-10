require_relative "../lib/php_pecl_formula"

class PhpAT72Apcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.19.tgz"
  sha256 "837fbc99d5c79efb510fafaf585ef0c06e02baf8310a7d77f93e402c93276ce0"
  license "PHP-3.01"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "533f584359e25854b882e8aee01869f8cac1c4c40c7ec104128bdc955d9192a0" => :mojave
    sha256 "da4b2c69fb469b3ff52361fe6b5c2dbca6819896c15fd9e1dab271293880d489" => :high_sierra
  end
end
