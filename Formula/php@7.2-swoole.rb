require_relative "../lib/php_pecl_formula"

class PhpAT72Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.12.tgz"
  sha256 "ad787fd0602faf8b54060496c3968f2a93c07f40fa083f22c9874699c31cfad5"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "f93f194752075185e0af71101b5ba1eeefeeab6149b5b1014a97a35b4a0fc90f" => :mojave
    sha256 "bc06d719cc2d480742c7a1b4f55bc3c1212f4072a80d5a77706c7eb7dec24b84" => :high_sierra
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
