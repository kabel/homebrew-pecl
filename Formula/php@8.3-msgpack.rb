require_relative "../lib/php_pecl_formula"

class PhpAT83Msgpack < PhpPeclFormula
  extension_dsl "Interfacing with MessagePack"

  url "https://pecl.php.net/get/msgpack-3.0.0.tgz"
  sha256 "55306a84797d399c6b269181ec484634f18bea1330bbd9d7405043c597de69cd"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "9d2071e26ffbe3a1237dd9872d1726b7dffbab615e11c6a8c820efa2e0af68a8"
    sha256 cellar: :any_skip_relocation, ventura: "d1d8112e470990aecbd2413f55b16d9a104e82eb2e6a6d7f12bb092f85a82c49"
  end

  deprecate! date: "2027-12-31", because: :unsupported

  depends_on "msgpack"

  conf_order "05"
end
