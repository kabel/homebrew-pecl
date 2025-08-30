require_relative "../lib/php_pecl_formula"

class PhpAT83Uuid < PhpPeclFormula
  extension_dsl "UUID extension"

  url "https://pecl.php.net/get/uuid-1.3.0.tgz"
  sha256 "b7af055e2c409622f8c5e6242d1c526c00e011a93c39b10ca28040b908da3f37"
  license "LGPL-2.1-only"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "7e9ba97e103715e61a5176170302dc4efe567814115c7a5b1b0ee8b9c1a1a986"
    sha256 cellar: :any, ventura: "a886172014d1a2a1a7bee5d900f190533a1986424f6f1d919f0753e19cae7670"
  end

  deprecate! date: "2027-12-31", because: :unsupported

  depends_on "util-linux"

  configure_arg "--with-uuid=#{Formula["util-linux"].opt_prefix}"
end
