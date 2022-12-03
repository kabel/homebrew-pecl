require_relative "../lib/php_pecl_formula"

class PhpAT73Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.8.1.tgz"
  sha256 "fe3699431cfe62c57eeb9af3ddd30d4232fdec454f8b95920c244f13564b8609"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 big_sur:  "199aa600305a4e006b5727e8ad7f2cef7960d1988ed0e59d782d361e600809a3"
    sha256 catalina: "876021c7f33cdceaccfcb92bd11e7a4e8cb4da217ba509899e508e8d0debae3a"
  end

  disable! date: "2021-12-06", because: :versioned_formula

  depends_on "openssl@1.1"
  depends_on "brotli"

  configure_arg %W[
    --enable-http2
    --enable-mysqlnd
    --enable-sockets
    --with-openssl-dir=#{Formula["openssl@1.1"].opt_prefix}
  ]
end
