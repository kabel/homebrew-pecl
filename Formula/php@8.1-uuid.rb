require_relative "../lib/php_pecl_formula"

class PhpAT81Uuid < PhpPeclFormula
  extension_dsl "UUID extension"

  url "https://pecl.php.net/get/uuid-1.3.0.tgz"
  sha256 "b7af055e2c409622f8c5e6242d1c526c00e011a93c39b10ca28040b908da3f37"
  license "LGPL-2.1-only"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "a327eba8ab633eac8de26f4b34e1777863ef3b4b6218e46a0945854890b50444"
    sha256 cellar: :any, ventura: "55896a94f215c870866b8baa835afb2ff9aeac66d1dbdef3b57589c22414cb91"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  depends_on "util-linux"

  configure_arg "--with-uuid=#{Formula["util-linux"].opt_prefix}"
end
