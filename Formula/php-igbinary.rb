require_relative "../lib/php_pecl_formula"

class PhpIgbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.14.tgz"
  sha256 "6337147a4fb888072566674837bda9928ee06ee7f0114b4338b86c816232925d"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "87d1ba56923c6fb6abd8f0debf43029827b18d5210ddbb1b95427daf2bec148d"
    sha256 cellar: :any_skip_relocation, monterey: "a04db30787f76e793e796dcafaee6bf3e0396e77fcf85a74458d312059c2fd3f"
    sha256 cellar: :any_skip_relocation, big_sur:  "f3118e0ec32e5c6c4e9eec06ec5eef2f3baa4fc8445921e965d2b7b842321f88"
  end

  conf_order "05"
end
