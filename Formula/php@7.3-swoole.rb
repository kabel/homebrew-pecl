require_relative "../lib/php_pecl_formula"

class PhpAT73Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.8.tgz"
  sha256 "202efb1ca36b7d30a54ee7571c7db34a5bf73a983a2c97f68cf074891a8f12c9"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "676a0111ddc664968b76ed470dee6f72a117ec904d565bf09ade6910803a2b8b" => :catalina
    sha256 "3d44f7216d63ca89ef9e07a8f8b5ca74a29a51a0dbee39504855688dc2dd7167" => :mojave
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
