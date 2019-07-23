require File.expand_path("../lib/php_pecl_formula", __dir__)

class PhpAT71Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.1.tgz"
  sha256 "40c9130e14af339212752d792647d0fe1575935be2425e9b91df2772ea9f575b"

  depends_on "openssl"
  depends_on "brotli"

  configure_arg %W[
    --enable-http2
    --enable-mysqlnd
    --enable-sockets
    --with-openssl-dir=#{Formula["openssl"].opt_prefix}
  ]
end
