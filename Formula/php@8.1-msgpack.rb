require_relative "../lib/php_pecl_formula"

class PhpAT81Msgpack < PhpPeclFormula
  extension_dsl "Interfacing with MessagePack"

  url "https://pecl.php.net/get/msgpack-3.0.0.tgz"
  sha256 "55306a84797d399c6b269181ec484634f18bea1330bbd9d7405043c597de69cd"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "b44c6775f62a9e775c5ff94d8ef48b2f043f8831f1d8033eaef2cc4a3f71ca08"
    sha256 cellar: :any_skip_relocation, ventura: "87eeb920ddc68f7ec1f2ecd1f4778fde0653b5ccb040ac61765a635011b6788a"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  depends_on "msgpack"

  conf_order "05"
end
