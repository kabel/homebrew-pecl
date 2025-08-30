require_relative "../lib/php_pecl_formula"

class PhpUuid < PhpPeclFormula
  extension_dsl "UUID extension"

  url "https://pecl.php.net/get/uuid-1.3.0.tgz"
  sha256 "b7af055e2c409622f8c5e6242d1c526c00e011a93c39b10ca28040b908da3f37"
  license "LGPL-2.1-only"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "680880add2685333c7f46d8bb82585af24b77b67cacb7a29fc577259b5d55133"
    sha256 cellar: :any, ventura: "76b63e558d254f39975042f9fc9bc687aea3f3787b4779eec56f46f1ac375593"
  end

  depends_on "util-linux"

  configure_arg "--with-uuid=#{Formula["util-linux"].opt_prefix}"
end
