require_relative "../lib/php_pecl_formula"

class PhpAT81Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.15.3.tgz"
  sha256 "4f2c4e417fb606b462e870ec03656f3a97ba0b399dc24a6d9d153e9846134388"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "dc346d1e88d00e8b0ba08025fde896af861b83607dfc6f21e98c48eb5c5e2ab3"
    sha256 cellar: :any, monterey: "5b330fcfeed9a7e174fafae837c42d35b53acf431786bb56f204f387d7729968"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
