require_relative "../lib/php_pecl_formula"

class PhpAT81Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.16.tgz"
  sha256 "8bf25d465abc7973d9e2c9a3039a5f8eea635b23bc1477017ff3999ff95836da"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "506ee599bcfefd228cf5a2f8c04a019f7ce452b9a200290c5083be2f85880b84"
    sha256 cellar: :any_skip_relocation, ventura:  "0856576fe521a8afac9113917b544f7ebb869d7f7765a8ad8d040039fdf1de20"
    sha256 cellar: :any_skip_relocation, monterey: "d0541a1728748dc0e51c4b63216bfe98e14b7ac963286663ff1b722a7b8f22a7"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  conf_order "05"
end
