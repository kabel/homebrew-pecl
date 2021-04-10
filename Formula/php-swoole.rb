require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.6.5.tgz"
  sha256 "1fb0c02220a06b08185f74adf50653d3f2dc2c4aacef01c5c8a5ef2169e117a7"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "7598b7f0be27f7807a1e64c4790866f5fd51b9490acdda01c952e056e2da2fe2"
    sha256 catalina: "a5924b8e7620388bc4420ffccc09290695b172bf8b69929c8bd59c479d1d509d"
    sha256 mojave:   "2cdbac51057fe29d615840d23e37189f406f8fd4018661a17aa9f430807a80dc"
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
