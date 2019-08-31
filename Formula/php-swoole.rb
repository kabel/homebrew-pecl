require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.5.tgz"
  sha256 "717fc7f8cfcb5a0721db18503d78defa0b76ed7219f8070f661bc3414e2cce44"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "5b8ea609226011fac967ace17bb13b28626e6b177af13b18a3f1896e86688b76" => :mojave
    sha256 "5b02bfa0c8c1cab62dbf4060417a16e7955f52a0d0358d21819cd757f077a721" => :high_sierra
  end

  depends_on "openssl"
  depends_on "brotli"

  configure_arg %W[
    --enable-http2
    --enable-mysqlnd
    --enable-sockets
    --with-openssl-dir=#{Formula["openssl"].opt_prefix}
  ]
end
