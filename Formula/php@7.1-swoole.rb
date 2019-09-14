require_relative "../lib/php_pecl_formula"

class PhpAT71Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.5.tgz"
  sha256 "717fc7f8cfcb5a0721db18503d78defa0b76ed7219f8070f661bc3414e2cce44"
  revision 1

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "c436d0d5115ede8549c8498f61f210d93e553932f433f4a68de97d3d17ec63cb" => :mojave
    sha256 "ea1466108c7a96e03df5fc838ba96b6fb4dccb7dcbc57a18ee26e525cba3f3d4" => :high_sierra
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
