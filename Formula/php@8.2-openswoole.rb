require_relative "../lib/php_pecl_formula"

class PhpAT82Openswoole < PhpPeclFormula
  extension_dsl "High Performance Programmatic Server for PHP with Async IO, Coroutines and Fibers"

  url "https://pecl.php.net/get/openswoole-25.2.0.tgz"
  sha256 "bcc1fed4877b6646cb8f79b092ba03d5e495800465a3fff83c065c58d4312d40"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "7e7217a17e52315ede0ff86d745cd49c819d9820e9b3beb3d3fa8466d8f2e034"
    sha256 cellar: :any, ventura:  "4a355234dfcec90fcfacdf8120b21890e3c0ea34dd5add8b7cc3232352fa101d"
    sha256 cellar: :any, monterey: "cde8ddf7f5a2eb99abac93ef7893eb22fb5c63a7b2b4e8f673ea835b1a10ca1f"
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
