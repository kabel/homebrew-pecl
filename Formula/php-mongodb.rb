require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.16.1.tgz"
  sha256 "2c5b7c7ccf6ca26d25af8487f4028390f0a7dc49efb2eb360a65840e1d6f566e"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "94ec5c32d25c274e03df5f742b05325e3cacbf64ab81ed58c8d446de67e05e20"
    sha256 cellar: :any, monterey: "0f4a0c0b73d170c0ab4f9346dfc055c51d94d05a1c253db3aecc69b465038754"
    sha256 cellar: :any, big_sur:  "908dd8822ced000b8197096747786b8cd33fa5993680e60dade14c3b2661586a"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
