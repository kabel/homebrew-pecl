require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.6.0.tgz"
  sha256 "84bcb805bf4401a25f329972f313a57c125fc32e022e91e0054644a67a6d3d95"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "0e1dbfeb218e400946dcc62c9af869b044f5d1c8a0154a2ae500e4e3e4c88382" => :catalina
    sha256 "023edfe016ededc7d6a0ae04c17dfa05420fd74a6ed05e1b1b4319bf8007696f" => :mojave
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
