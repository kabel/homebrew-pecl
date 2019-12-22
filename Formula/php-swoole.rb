require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.13.tgz"
  sha256 "6294210a58bdb3a5f2b9a472658c886360744ae458bce96d631d0657577c57b9"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "930de8553f9b8d6228c75636200fea1c292c680feff50f1ee4391f0aa25fd5dc" => :mojave
    sha256 "379adb3d8eaeebadd3655d66c003cb2bb9c512c4d2dc12a6ec3d611203c72b11" => :high_sierra
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
