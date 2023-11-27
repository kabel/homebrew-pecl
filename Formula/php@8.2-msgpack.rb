require_relative "../lib/php_pecl_formula"

class PhpAT82Msgpack < PhpPeclFormula
  extension_dsl "Interfacing with MessagePack"

  url "https://pecl.php.net/get/msgpack-2.2.0.tgz"
  sha256 "82aa1e404c5ff54ec41d2a201305cd6594ed14a7529e9119fa7ca457e4bbd12a"
  license "PHP-3.01"

  deprecate! date: "2025-12-08", because: :unsupported

  depends_on "msgpack"

  conf_order "05"
end
