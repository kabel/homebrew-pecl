require_relative "../lib/php_pecl_formula"

class PhpAT82Openswoole< PhpPeclFormula
  extension_dsl "High Performance Programmatic Server for PHP with Async IO, Coroutines and Fibers"

  url "https://pecl.php.net/get/openswoole-22.1.0.tgz"
  sha256 "2dc7c37957040495fb3bbef64e7cc0d8d0549dd31ede3e96101ad79502d19dea"
  license "Apache-2.0"

  deprecate! date: "2025-12-08", because: :unsupported

  conflicts_with "php@8.2-swoole", because: "both provide the same PHP API"

  depends_on "openssl@3"
  depends_on "brotli"

  configure_arg %W[
    --enable-http2
    --enable-mysqlnd
    --enable-sockets
    --with-openssl-dir=#{Formula["openssl@3"].opt_prefix}
  ]
end
