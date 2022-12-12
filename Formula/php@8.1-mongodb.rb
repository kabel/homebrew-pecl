require_relative "../lib/php_pecl_formula"

class PhpAT81Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.15.0.tgz"
  sha256 "eeb6268d34bd0b4a3dcc60dde4e484f5cf4fa2439ca3d9f024c0000e99ee7240"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "dc346d1e88d00e8b0ba08025fde896af861b83607dfc6f21e98c48eb5c5e2ab3"
    sha256 cellar: :any, monterey: "5b330fcfeed9a7e174fafae837c42d35b53acf431786bb56f204f387d7729968"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
