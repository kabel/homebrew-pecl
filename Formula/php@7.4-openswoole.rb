require_relative "../lib/php_pecl_formula"

class PhpAT74Openswoole< PhpPeclFormula
  extension_dsl "High Performance Programmatic Server for PHP with Async IO, Coroutines and Fibers"

  url "https://pecl.php.net/get/openswoole-4.9.1.tgz"
  sha256 "2cc0a9a95f90c30dd6fcf8bbb30d1aac2c599083ad44769c7646d0932211a2bf"
  license "Apache-2.0"

  depends_on "openssl@1.1"
  depends_on "brotli"

  configure_arg %W[
    --enable-http2
    --enable-mysqlnd
    --enable-sockets
    --with-openssl-dir=#{Formula["openssl@1.1"].opt_prefix}
  ]
end
