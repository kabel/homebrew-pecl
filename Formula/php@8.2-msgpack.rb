require_relative "../lib/php_pecl_formula"

class PhpAT82Msgpack < PhpPeclFormula
  extension_dsl "Interfacing with MessagePack"

  url "https://pecl.php.net/get/msgpack-3.0.0.tgz"
  sha256 "55306a84797d399c6b269181ec484634f18bea1330bbd9d7405043c597de69cd"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "243d0ba00a9cd2498bdcbfe613efc33fb63a9a5a0830f78bb158403918f9f186"
    sha256 cellar: :any_skip_relocation, ventura: "4e127f44496fe2c5a76132629c8796a5e8d94aedec6102ae4cab89cd4195e38b"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  depends_on "msgpack"

  conf_order "05"
end
