require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.9.0.tgz"
  sha256 "8dd1f867805d4ae78ccefc1825da1180eb82efbe6d6575eef2cc3dd1aeca5943"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "d20630e8854f7ed41003cd0749da69aa8bf1983b4a85a349a9a1f0a8745504ad" => :mojave
    sha256 "7fa0eab67b9631dec5d13944ee3772bb24fdb4efe63c0c69d25fa1e742bfc538" => :high_sierra
  end

  def extension_type
    "zend_extension"
  end
end
