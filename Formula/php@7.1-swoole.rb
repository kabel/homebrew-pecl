require_relative "../lib/php_pecl_formula"

class PhpAT71Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.5.tgz"
  sha256 "717fc7f8cfcb5a0721db18503d78defa0b76ed7219f8070f661bc3414e2cce44"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "64920dc57b8e970793a28e326d52f0da20f9d3881328850d5670cbdb11e1492d" => :mojave
    sha256 "805bbe4012cc920d4a0bf529347ac6de45d7136693103af837f85d68800c744a" => :high_sierra
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
