require_relative "../lib/php_pecl_formula"

class PhpOpenswoole < PhpPeclFormula
  extension_dsl "High Performance Programmatic Server for PHP with Async IO, Coroutines and Fibers"

  url "https://pecl.php.net/get/openswoole-25.2.0.tgz"
  sha256 "bcc1fed4877b6646cb8f79b092ba03d5e495800465a3fff83c065c58d4312d40"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "518af1f6ed602cf51e61c9d14368c11299690f8ffeb775ca6a7786c6d8095f90"
    sha256 cellar: :any, ventura: "474d5cd2e250ecf22e1ebc5e51b38c712dadd3bb6a907e0200df235e33a5f8dd"
  end

  conflicts_with "php-swoole", because: "both provide the same PHP API"

  depends_on "openssl@3"
  depends_on "brotli"

  configure_arg %W[
    --enable-http2
    --enable-mysqlnd
    --enable-sockets
    --with-openssl-dir=#{Formula["openssl@3"].opt_prefix}
  ]
end
