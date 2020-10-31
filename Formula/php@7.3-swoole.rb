require_relative "../lib/php_pecl_formula"

class PhpAT73Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.6.tgz"
  sha256 "1a1502b54767c441e4de71e4d778e134d1c9e3ed5391d0b7aa6ee6a80b6b6df4"
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
