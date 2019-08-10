require_relative "../lib/php_pecl_formula"

class PhpAT72Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.3.tgz"
  sha256 "c04d0be9ae454a784f1799a46fe6b45c83170ef96b76507c75f7a4258cabcf4e"

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
