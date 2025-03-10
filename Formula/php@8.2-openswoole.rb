require_relative "../lib/php_pecl_formula"

class PhpAT82Openswoole < PhpPeclFormula
  extension_dsl "High Performance Programmatic Server for PHP with Async IO, Coroutines and Fibers"

  url "https://pecl.php.net/get/openswoole-25.2.0.tgz"
  sha256 "bcc1fed4877b6646cb8f79b092ba03d5e495800465a3fff83c065c58d4312d40"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "bf0f27b25968cb8dba62e77944a56d746563505032e2018f47d92c0150ac92c5"
    sha256 cellar: :any, ventura: "e2b6f4d63261ecf4345ce7ac40946b041b5acb83bcdec8e7225def83023508fb"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  conflicts_with "php@8.2-swoole", because: "both provide the same PHP API"

  depends_on "openssl@3"
  depends_on "brotli"

  configure_arg %W[
    --enable-http2
    --enable-mysqlnd
    --enable-sockets
    --with-openssl-dir=#{Formula["openssl@3"].opt_prefix}
  ]
end
