require_relative "../lib/php_pecl_formula"

class PhpAT73Apcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.21.tgz"
  sha256 "1033530448696ee7cadec85050f6df5135fb1330072ef2a74569392acfecfbc1"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "9ed77c6f3a42bb3ad7b502a8b97b562e7f9974a661e3469a8b9f51dea804a782"
    sha256 cellar: :any_skip_relocation, catalina: "94d78563722d2e15358437c3005d3566b00186fdc34f639e2ca4a7e75fada20c"
    sha256 cellar: :any_skip_relocation, mojave:   "bd3e14ff65ef28ec181adc881b46e0045fd88187cf5ebebe0edb860d2570ad41"
  end

  disable! date: "2021-12-06", because: :versioned_formula
end
