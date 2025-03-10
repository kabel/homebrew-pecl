require_relative "../lib/php_pecl_formula"

class PhpAT83Openswoole < PhpPeclFormula
  extension_dsl "High Performance Programmatic Server for PHP with Async IO, Coroutines and Fibers"

  url "https://pecl.php.net/get/openswoole-25.2.0.tgz"
  sha256 "bcc1fed4877b6646cb8f79b092ba03d5e495800465a3fff83c065c58d4312d40"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "0ed82236523a778154b012d5ff4110e367babebf711d225fecc4868e5a1c55fc"
    sha256 cellar: :any, ventura: "a027929c03cfed69908ec46e0c30b3786774891d73317328762df3da96d9b023"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  conflicts_with "php@8.3-swoole", because: "both provide the same PHP API"

  depends_on "openssl@3"
  depends_on "brotli"

  configure_arg %W[
    --enable-http2
    --enable-mysqlnd
    --enable-sockets
    --with-openssl-dir=#{Formula["openssl@3"].opt_prefix}
  ]
end
