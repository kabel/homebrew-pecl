require_relative "../lib/php_pecl_formula"

class PhpAT72Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.5.tgz"
  sha256 "717fc7f8cfcb5a0721db18503d78defa0b76ed7219f8070f661bc3414e2cce44"
  revision 1

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "d80b8dc4116dd50a25265029b080681e098e602afc0fca7b9a85fcd50bc66cf1" => :mojave
    sha256 "7520275a1eabd76527932c6fac3875e4da781f79f0dfc17412873adf0199b3df" => :high_sierra
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
