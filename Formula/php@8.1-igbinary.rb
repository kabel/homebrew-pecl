require_relative "../lib/php_pecl_formula"

class PhpAT81Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.14.tgz"
  sha256 "6337147a4fb888072566674837bda9928ee06ee7f0114b4338b86c816232925d"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "d7c19beb63eb7e7e0f7bb2602651a039cf5b847760973ed0c99127f3cfe4de46"
    sha256 cellar: :any_skip_relocation, ventura:  "8a1084ec7f267b3abc75abfa688995ab46ce8bfbf8d4748fc89209216f5a890a"
    sha256 cellar: :any_skip_relocation, monterey: "fcaf43de394883132620a94d0580dfc332a22fdb2f12a1357383b8e60e2fbe29"
    sha256 cellar: :any_skip_relocation, big_sur:  "221bcc6fc54161a09546112b00352e2c5fc87467425bb9a092594a1f6acb7e75"
  end

  deprecate! date: "2024-11-25", because: :unsupported

  conf_order "05"
end
