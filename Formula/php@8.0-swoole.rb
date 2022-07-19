require_relative "../lib/php_pecl_formula"

class PhpAT80Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.8.11.tgz"
  sha256 "307ddd7909e24c8edd7f650d7caeefd6a90fe49c721b0de3f5a7407990430f67"
  license "Apache-2.0"

  conflicts_with "php@8.0-openswoole", because: "both provide the same PHP API"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "c03fa92bb97301860600821fe2f8c60b9a4f58c418ec6f923be22bf718e0586c"
    sha256 cellar: :any, big_sur:  "325dcf450ec99513306639eeb6c9244b36effb51b2f87238e0e39cef474e2143"
    sha256 cellar: :any, catalina: "ea8b78db3fcd98b85e36bd395457785586c4b958847716fc3306cb7dd897819b"
  end

  depends_on "openssl@1.1"
  depends_on "brotli"

  configure_arg %W[
    --enable-http2
    --enable-mysqlnd
    --enable-sockets
    --with-openssl-dir=#{Formula["openssl@1.1"].opt_prefix}
  ]
end
