require_relative "../lib/php_pecl_formula"

class PhpAT72Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.7.tgz"
  sha256 "7c1396b0a685e92b376eeda6e89624bb263b75795c1ca4c2a3c8a2dba9894a7b"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "059148d1264391a0c9b0c5da401c5610fa3053675fc8bd12360e608fdc386a8f" => :mojave
    sha256 "b39be2b21bdfbda742b95a7ad103fb34880e0638a5b83760a94fece0fb3eb2d6" => :high_sierra
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
