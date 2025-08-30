require_relative "../lib/php_pecl_formula"

class PhpUuid < PhpPeclFormula
  extension_dsl "UUID extension"

  url "https://pecl.php.net/get/uuid-1.3.0.tgz"
  sha256 "b7af055e2c409622f8c5e6242d1c526c00e011a93c39b10ca28040b908da3f37"
  license "LGPL-2.1-only"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "a42f9ac270eea8bc2177688b80c3b1ff15cd0a26b17ceb1cb86306a0f2f7b54d"
    sha256 cellar: :any, ventura: "abd8a3160c35b8aa4a8299b910da47e25ccae0e93edde12d7df47f28f5a81840"
  end

  depends_on "util-linux"

  configure_arg "--with-uuid=#{Formula["util-linux"].opt_prefix}"
end
