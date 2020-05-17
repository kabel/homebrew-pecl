require_relative "../lib/php_pecl_formula"

class PhpAT73Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.1.tgz"
  sha256 "d48d90fb57f04f25911d33a2c5e99a6c615f58e7260c63702b769016079224d5"

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
