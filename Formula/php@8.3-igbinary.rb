require_relative "../lib/php_pecl_formula"

class PhpAT83Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.16.tgz"
  sha256 "8bf25d465abc7973d9e2c9a3039a5f8eea635b23bc1477017ff3999ff95836da"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "49199f98f93bcd02123bd6d9ec6a6c392e81b330d179284c352e7ed39ac6819c"
    sha256 cellar: :any_skip_relocation, ventura: "d7c766b2197deee9b6c270b828d610bf402240251612d7237cb981bc043b1238"
  end

  deprecate! date: "2027-12-31", because: :unsupported

  conf_order "05"
end
