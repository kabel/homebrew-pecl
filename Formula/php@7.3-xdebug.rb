require_relative "../lib/php_pecl_formula"

class PhpAT73Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.9.0.tgz"
  sha256 "8dd1f867805d4ae78ccefc1825da1180eb82efbe6d6575eef2cc3dd1aeca5943"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "8683b2797805e86c0e40f5e582fe5a3715253f260f57708cfb472a341c388a35" => :mojave
    sha256 "ebefd33e8a8c55e3e49a9d75322cbd447bb3e48499cbc1e20036f9d36c5d8813" => :high_sierra
  end

  def extension_type
    "zend_extension"
  end
end
