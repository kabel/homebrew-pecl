require_relative "../lib/php_pecl_formula"

class PhpAT71Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.12.tgz"
  sha256 "ad787fd0602faf8b54060496c3968f2a93c07f40fa083f22c9874699c31cfad5"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "ac666c58f23ece85db63f838d73a8ca1cd3eeddb5ebaa4bfca51eceb6508afc4" => :mojave
    sha256 "e55a0d940a824c0325626b5c99636ea64f716d4b3ad9609f7b13e3ab4a5919d8" => :high_sierra
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
