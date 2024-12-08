require_relative "../lib/php_pecl_formula"

class PhpAT81Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.16.tgz"
  sha256 "8bf25d465abc7973d9e2c9a3039a5f8eea635b23bc1477017ff3999ff95836da"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "efb10623bd2329312ffb87123190e09041cdf4a6a1f6b8263dad1bff735c510a"
    sha256 cellar: :any_skip_relocation, ventura: "ca53f460197d3e5c652d64498ca50f3c5d6f4431289d70de85c6a9dd0cca5a4f"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  conf_order "05"
end
