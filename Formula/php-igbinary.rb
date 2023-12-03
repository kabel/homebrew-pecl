require_relative "../lib/php_pecl_formula"

class PhpIgbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.15.tgz"
  sha256 "eff099b0343b45fbe9765d4b3d441064ddefbbf9cfb7198487de9bda6b8f4907"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "1fac82d6f83f3f98505235da07fef7c86637fe2635e424325598cc6bfa2f2f5b"
    sha256 cellar: :any_skip_relocation, ventura:  "48d1061bb07c4fd60ce8fce690175de76cc8024da859be53ac09c632c3964e50"
    sha256 cellar: :any_skip_relocation, monterey: "915dc69fa99195219323dfc5197c2d65b13d95d881df18c5f2983914e6f13beb"
  end

  conf_order "05"
end
