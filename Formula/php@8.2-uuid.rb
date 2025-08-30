require_relative "../lib/php_pecl_formula"

class PhpAT82Uuid < PhpPeclFormula
  extension_dsl "UUID extension"

  url "https://pecl.php.net/get/uuid-1.3.0.tgz"
  sha256 "b7af055e2c409622f8c5e6242d1c526c00e011a93c39b10ca28040b908da3f37"
  license "LGPL-2.1-only"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "b469d4ff42ff88e4ea239388095f8004fef3d61b754f984a8b8712e1ce0c2218"
    sha256 cellar: :any, ventura: "f1469484655cefe11c2f0809965afa695aad870b29f341068b11763d54486905"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  depends_on "util-linux"

  configure_arg "--with-uuid=#{Formula["util-linux"].opt_prefix}"
end
