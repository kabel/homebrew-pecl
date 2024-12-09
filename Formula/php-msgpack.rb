require_relative "../lib/php_pecl_formula"

class PhpMsgpack < PhpPeclFormula
  extension_dsl "Interfacing with MessagePack"

  url "https://pecl.php.net/get/msgpack-3.0.0.tgz"
  sha256 "55306a84797d399c6b269181ec484634f18bea1330bbd9d7405043c597de69cd"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "20e5e6364dd11ee5487a2be28c0e499d5b71546999202be819d5a1973ecc8758"
    sha256 cellar: :any_skip_relocation, ventura: "c4b2fc7f7a4b7d3130793840df4770cbf6b862834dfd28d8002ccd45121cbc3e"
  end

  depends_on "msgpack"

  conf_order "05"
end
