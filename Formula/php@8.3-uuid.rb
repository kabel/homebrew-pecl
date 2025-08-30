require_relative "../lib/php_pecl_formula"

class PhpAT83Uuid < PhpPeclFormula
  extension_dsl "UUID extension"

  url "https://pecl.php.net/get/uuid-1.3.0.tgz"
  sha256 "b7af055e2c409622f8c5e6242d1c526c00e011a93c39b10ca28040b908da3f37"
  license "LGPL-2.1-only"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "e63b488a8a50d8cea3b21778db9805a5b524d5a0ffd92038956a2fab7da1228c"
    sha256 cellar: :any, ventura: "45918636f810817e60c7ce0ee33de5829a65f74b4f90de9676ef1995a93710cb"
  end

  deprecate! date: "2027-12-31", because: :unsupported

  depends_on "util-linux"

  configure_arg "--with-uuid=#{Formula["util-linux"].opt_prefix}"
end
