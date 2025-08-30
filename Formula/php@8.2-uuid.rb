require_relative "../lib/php_pecl_formula"

class PhpAT82Uuid < PhpPeclFormula
  extension_dsl "UUID extension"

  url "https://pecl.php.net/get/uuid-1.3.0.tgz"
  sha256 "b7af055e2c409622f8c5e6242d1c526c00e011a93c39b10ca28040b908da3f37"
  license "LGPL-2.1-only"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "55e56b8218a7ba167cbb2463bbbced9ed98a1ed3946511696421d4e445a9e4d9"
    sha256 cellar: :any, ventura: "2b3af477eb53bc8dc6f836b02cf2253bc0d0c42899a1dff790bf5352e2d00d7a"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  depends_on "util-linux"

  configure_arg "--with-uuid=#{Formula["util-linux"].opt_prefix}"
end
