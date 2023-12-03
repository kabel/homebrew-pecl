require_relative "../lib/php_pecl_formula"

class PhpAT81Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.15.tgz"
  sha256 "eff099b0343b45fbe9765d4b3d441064ddefbbf9cfb7198487de9bda6b8f4907"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "506ee599bcfefd228cf5a2f8c04a019f7ce452b9a200290c5083be2f85880b84"
    sha256 cellar: :any_skip_relocation, ventura:  "0856576fe521a8afac9113917b544f7ebb869d7f7765a8ad8d040039fdf1de20"
    sha256 cellar: :any_skip_relocation, monterey: "d0541a1728748dc0e51c4b63216bfe98e14b7ac963286663ff1b722a7b8f22a7"
  end

  deprecate! date: "2024-11-25", because: :unsupported

  conf_order "05"
end
