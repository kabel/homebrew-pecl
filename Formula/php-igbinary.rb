require_relative "../lib/php_pecl_formula"

class PhpIgbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.14.tgz"
  sha256 "6337147a4fb888072566674837bda9928ee06ee7f0114b4338b86c816232925d"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "66f0c6ff116dafbbb6afb3c2b454f9f408fc982a0d11e1e3c037663b70f2d719"
    sha256 cellar: :any_skip_relocation, monterey: "b7edf1cd6de9d06af6d45b5ff8ee7deb92a013a0ceb52793a376957e0ef138e8"
    sha256 cellar: :any_skip_relocation, big_sur:  "e1407a91747478e380d9f5cada230b253b3a4c69f646b30e3e2182099af91225"
  end

  conf_order "05"
end
