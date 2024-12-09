require_relative "../lib/php_pecl_formula"

class PhpMsgpack < PhpPeclFormula
  extension_dsl "Interfacing with MessagePack"

  url "https://pecl.php.net/get/msgpack-3.0.0.tgz"
  sha256 "55306a84797d399c6b269181ec484634f18bea1330bbd9d7405043c597de69cd"
  license "PHP-3.01"

  depends_on "msgpack"

  conf_order "05"
end
