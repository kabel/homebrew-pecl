require_relative "../lib/php_pecl_formula"

class PhpAT73Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.0.tgz"
  sha256 "6e3a4eaeca1abc56871fff6cd3c1dc7b87afeaeb3655a28fb99a3d30f7c3d0ab"

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
