require_relative "../lib/php_pecl_formula"

class PhpAT82Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.3.2.tgz"
  sha256 "15545b8311bedb5e7df08fd90d6653d9bf33629791e8119e70350475df932c55"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 sonoma:   "14ead24a830019c75f5c349752beea34c90150bad597379b641bcaa301571ea2"
    sha256 ventura:  "9db20687a18e580298fd44077e00a7c6d46b95414c801fc089c3de4aaafb2639"
    sha256 monterey: "cd28842740dfe12e5037bdcd186724dbfe4a25e7cc2e6b031d044d40358eb81c"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  def extension_type
    "zend_extension"
  end
end
