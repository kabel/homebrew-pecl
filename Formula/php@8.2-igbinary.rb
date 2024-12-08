require_relative "../lib/php_pecl_formula"

class PhpAT82Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.16.tgz"
  sha256 "8bf25d465abc7973d9e2c9a3039a5f8eea635b23bc1477017ff3999ff95836da"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "5d3e44bb688374c0824c75b1b63ab1c7304c86e2a59349ef7961734fb8b43f5f"
    sha256 cellar: :any_skip_relocation, ventura: "9662a53762d5cd5422612793f201e5d107ca8730eb84fd465c08f82b2370b74b"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  conf_order "05"
end
