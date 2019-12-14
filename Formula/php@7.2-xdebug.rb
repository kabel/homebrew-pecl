require_relative "../lib/php_pecl_formula"

class PhpAT72Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.9.0.tgz"
  sha256 "8dd1f867805d4ae78ccefc1825da1180eb82efbe6d6575eef2cc3dd1aeca5943"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "61999e588c1b81aac55283c58220986e3e46c485da03d1bbd0d1f7ba4c19169c" => :mojave
    sha256 "a7073b9ac63a54c003666d237f9fe71bcdf4ee84be8fe75f27fdabb78a98dfe0" => :high_sierra
  end

  def extension_type
    "zend_extension"
  end
end
