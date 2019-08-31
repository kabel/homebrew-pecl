require_relative "../lib/php_pecl_formula"

class PhpAT72Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.5.tgz"
  sha256 "717fc7f8cfcb5a0721db18503d78defa0b76ed7219f8070f661bc3414e2cce44"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "d2d8d42397e832a0954e062586dcb631687d52e6aae67491177c9bca1196d6ce" => :mojave
    sha256 "d09db6b19c33405b962ff4cad9036956c3c70ff3e61af7d70b0c132bc7b9766d" => :high_sierra
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
