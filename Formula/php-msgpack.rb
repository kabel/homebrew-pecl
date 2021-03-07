require_relative "../lib/php_pecl_formula"

class PhpMsgpack < PhpPeclFormula
  extension_dsl "Interfacing with MessagePack"

  url "https://pecl.php.net/get/msgpack-2.1.2.tgz"
  sha256 "912ff4d33f323ea7cb04569df5ae23c09ce614412a65c39c2ca11f52802abe82"
  license "PHP-3.01"

  depends_on "msgpack"
end
