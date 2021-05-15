require_relative "../lib/php_pecl_formula"

class PhpAT73Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.6.7.tgz"
  sha256 "c5842d3209d1db49a1a6102fb1892a1d73e3bddf8088ca329e53a33f00b9fc80"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "a40854b699deaf0b3c113752c4aa7de572d66258d0ee74684aaaf0d935bf5c57"
    sha256 catalina: "bf0ae290e1ba33906afe9a6e2e493c5a73fcf6dccc6a76a9569378106321aed7"
    sha256 mojave:   "2bc0bd0fe084c677e7f037df80644a2c814de37246783be01a1f4bed6f686d56"
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
