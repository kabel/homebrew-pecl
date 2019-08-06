require_relative "../lib/php_pecl_formula"

class PhpAT71Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.3.tgz"
  sha256 "c04d0be9ae454a784f1799a46fe6b45c83170ef96b76507c75f7a4258cabcf4e"

  depends_on "openssl"
  depends_on "brotli"

  configure_arg %W[
    --enable-http2
    --enable-mysqlnd
    --enable-sockets
    --with-openssl-dir=#{Formula["openssl"].opt_prefix}
  ]
end
