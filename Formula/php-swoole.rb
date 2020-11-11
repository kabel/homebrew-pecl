require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.7.tgz"
  sha256 "a6fada79611191c021f698265c5651c0566db6cda705f29e8bdb5a99c4c95008"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "3cf23b18f58e00d999760791b3e0e8013d0536b39b121dc47df3d6ae37845dea" => :catalina
    sha256 "5b93ac63eaaca34514beb91aef4490b333f6ae43793f2d3c0487007b14baa903" => :mojave
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
