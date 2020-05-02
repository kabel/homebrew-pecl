require_relative "../lib/php_pecl_formula"

class PhpAT73Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.0.tgz"
  sha256 "6e3a4eaeca1abc56871fff6cd3c1dc7b87afeaeb3655a28fb99a3d30f7c3d0ab"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "44e47fb45214784c686bbc59775f49ffe3c36e56d4907e9f34de7129329b88ad" => :catalina
    sha256 "10973402b8de3b15f090303c02c55989dbf8582d50ab1956256b67383ee5afdc" => :mojave
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
