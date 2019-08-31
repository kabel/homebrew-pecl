require_relative "../lib/php_pecl_formula"

class PhpAT72Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.5.tgz"
  sha256 "717fc7f8cfcb5a0721db18503d78defa0b76ed7219f8070f661bc3414e2cce44"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "14483472ce2c0d8fa0535759e4525c5b742884f2bb09f7dcc7d1016e0e98ae35" => :mojave
    sha256 "173e8916b227b0a5da3327bb60d49dce911a16e7175e1a8e3ba73e0a8658a583" => :high_sierra
  end

  depends_on "openssl"
  depends_on "brotli"

  configure_arg %W[
    --enable-http2
    --enable-mysqlnd
    --enable-sockets
    --with-openssl-dir=#{Formula["openssl"].opt_prefix}
  ]
end
