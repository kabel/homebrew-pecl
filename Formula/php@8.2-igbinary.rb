require_relative "../lib/php_pecl_formula"

class PhpAT82Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.16.tgz"
  sha256 "8bf25d465abc7973d9e2c9a3039a5f8eea635b23bc1477017ff3999ff95836da"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "f0f8deefbe7d4058b3a4c08e1d028f928cd0206205733d09f5f277b359609272"
    sha256 cellar: :any_skip_relocation, ventura:  "0ed8da973c17b32db787b38aea5bc08983b96f9db0e64c658f5bd127ac23d370"
    sha256 cellar: :any_skip_relocation, monterey: "8b364a9e6a7acd84b2a30bdef1cda04176985486e30e7aaccda21f76ed37e5e4"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  conf_order "05"
end
