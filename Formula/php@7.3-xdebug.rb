require_relative "../lib/php_pecl_formula"

class PhpAT73Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.9.0.tgz"
  sha256 "8dd1f867805d4ae78ccefc1825da1180eb82efbe6d6575eef2cc3dd1aeca5943"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "1e5242b25080ea7dc6c0091087da48bf6c0ce05a846a7443eaabb38e3ec3e2a4" => :mojave
    sha256 "8b8bdaceb9033f2bf4c32fe32da7b8c9eef283b9ed0b9eace8d069f0c735053b" => :high_sierra
  end

  def extension_type
    "zend_extension"
  end
end
