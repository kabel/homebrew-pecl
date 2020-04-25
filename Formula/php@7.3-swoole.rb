require_relative "../lib/php_pecl_formula"

class PhpAT73Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.18.tgz"
  sha256 "00b8fc5fc11406127c4f946a6cfe5421bf92fe5d018882a986c60bf61d86233b"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "a5483dd12362e8096a300867ed0a901bae40522249597b7528c0880321030c50" => :catalina
    sha256 "53dcb4a41c836470f6f1b3ff9dfc864b5fffc4f0ba9b3a0fe2f55eaafd23bf2e" => :mojave
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
