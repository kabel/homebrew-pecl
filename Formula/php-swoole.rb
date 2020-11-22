require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.8.tgz"
  sha256 "202efb1ca36b7d30a54ee7571c7db34a5bf73a983a2c97f68cf074891a8f12c9"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "1dbd5fd17088d7eea6ae2e16ac7d25dc4653ebbf0877d15859663b1c97d6fe7c" => :catalina
    sha256 "6079cf0753cf531983c2ca11597f7be46674dadea4c8e80d284ce53b6b88505f" => :mojave
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
