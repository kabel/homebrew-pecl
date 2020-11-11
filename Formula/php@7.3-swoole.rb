require_relative "../lib/php_pecl_formula"

class PhpAT73Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.7.tgz"
  sha256 "a6fada79611191c021f698265c5651c0566db6cda705f29e8bdb5a99c4c95008"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "327a3a938fcda4239d2689eeb0199d9df7316e94af7938a5a0eb1e626f3add75" => :catalina
    sha256 "d3e511872c772442909e3a3ef1a00ec484cab202bf63cb92fe42a33a2c1a3b57" => :mojave
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
