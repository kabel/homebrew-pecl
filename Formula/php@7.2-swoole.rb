require_relative "../lib/php_pecl_formula"

class PhpAT72Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.6.tgz"
  sha256 "1a1502b54767c441e4de71e4d778e134d1c9e3ed5391d0b7aa6ee6a80b6b6df4"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "a93b9058af9939efaed361279b72c504f0ff40ad955bd275d63902613d5119a8" => :catalina
    sha256 "a111450658c9201bd86b9fec6125bd9a97c1e5257d867271721383dfc967a10a" => :mojave
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
