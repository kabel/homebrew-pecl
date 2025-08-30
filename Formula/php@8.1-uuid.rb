require_relative "../lib/php_pecl_formula"

class PhpAT81Uuid < PhpPeclFormula
  extension_dsl "UUID extension"

  url "https://pecl.php.net/get/uuid-1.3.0.tgz"
  sha256 "b7af055e2c409622f8c5e6242d1c526c00e011a93c39b10ca28040b908da3f37"
  license "LGPL-2.1-only"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "a193ab1538940339c890b2acb80343eee75b14b4737a4c079664ea4250f6e11b"
    sha256 cellar: :any, ventura: "a822fe70ef85f000fa5acb85a575dbcbf3458a51f551abe9e95790717f8f36ed"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  depends_on "util-linux"

  configure_arg "--with-uuid=#{Formula["util-linux"].opt_prefix}"
end
